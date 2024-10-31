resource "kubernetes_namespace" "helm_dashboard_namespace" {
  metadata {
    name = var.helm_dashboard_namespace
  }
}

resource "argocd_application" "helm_dashboard" {
  count = lower(var.deploy_method) == "argocd" ? 1 : 0
  metadata {
    name      = var.helm_chart_name
    namespace = var.argocd_namespace
  }
  spec {
    destination {
      server    = var.cluster_url
      namespace = kubernetes_namespace.helm_dashboard_namespace.metadata[0].name
    }
    sync_policy {
      automated {}
    }
    source {
      repo_url        = var.helm_chart_repo
      chart           = var.helm_chart_name
      target_revision = var.helm_chart_version
      helm {
        values = var.helm_custom_values ? templatefile(var.helm_custom_values_path, {}) : ""
      }
    }
  }
}
resource "helm_release" "helm_dashboard" {
  count      = lower(var.deploy_method) == "helm" ? 1 : 0
  namespace  = kubernetes_namespace.helm_dashboard_namespace.metadata[0].name
  name       = var.helm_chart_name
  chart      = var.helm_chart_name
  repository = var.helm_chart_repo
  version    = var.helm_chart_version
  values     = var.helm_custom_values ? [templatefile(var.helm_custom_values_path, {})] : []
}
