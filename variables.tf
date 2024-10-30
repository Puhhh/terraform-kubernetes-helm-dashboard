variable "kubeconfig_path" {
  description = "Kubeconfig Path"
  type        = string
  default     = "~/.kube/config"
}
variable "kube_context" {
  description = "Kubernetes Context to Use"
  type        = string
  default     = ""
}
variable "deploy_method" {
  description = "Choose Deploy Method ArgoCD or Helm"
  type        = string
}
variable "argocd_server" {
  description = "ArgoCD Server URL"
  type        = string
  default     = ""
  validation {
    condition     = !(lower(var.deploy_method) == "argocd" && var.argocd_server == "")
    error_message = "ArgoCD Server URL Must Not be NULL When Deploy Method is ArgoCD."
  }
}
variable "argocd_token" {
  description = "ArgoCD Token"
  type        = string
  sensitive   = true
  default     = ""
  validation {
    condition     = !(lower(var.deploy_method) == "argocd" && var.argocd_token == "")
    error_message = "ArgoCD Token Must Not be NULL When Deploy Method is ArgoCD."
  }
}
variable "tls_verify_skip" {
  description = "Skip SelfSigned Certificates Validate"
  type        = bool
  default     = false
}
variable "helm_dashboard_namespace" {
  description = "Helm Dashboard Namespace"
  type        = string
  default     = "helm-dashboard"
}
variable "helm_dashboard_name" {
  description = "Helm Dashboard Name"
  type        = string
  default     = "helm-dashboard"
}
variable "argocd_namespace" {
  description = "ArgoCD Namespace"
  type        = string
  default     = "argocd"
}
variable "cluster_url" {
  description = "Cluster URL"
  type        = string
  default     = "https://kubernetes.default.svc"
}
variable "helm_name" {
  description = "Helm Release Name"
  type        = string
  default     = "helm-dashboard"
}
variable "helm_chart_name" {
  description = "Helm Chart Name"
  type        = string
  default     = "helm-dashboard"
}
variable "helm_chart_repo" {
  description = "Helm Chart Repo"
  type        = string
  default     = "https://helm-charts.komodor.io"
}
variable "helm_chart_version" {
  description = "Helm Chart Version"
  type        = string
  default     = "0.1.10"
}
variable "helm_custom_values" {
  description = "Use Helm Custom Values"
  type        = bool
  default     = false
}
variable "helm_custom_values_path" {
  description = "Helm Custom Values Path"
  type        = string
  default     = ""
  validation {
    condition     = !(var.helm_custom_values && var.helm_custom_values_path == "")
    error_message = "helm_custom_values_path must not be null when helm_custom_values is true."
  }
}
