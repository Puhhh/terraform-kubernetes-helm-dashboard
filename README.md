<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_argocd"></a> [argocd](#requirement\_argocd) | >= 1.7.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_argocd"></a> [argocd](#provider\_argocd) | 6.2.0 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.16.1 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.33.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [argocd_application.helm_dashboard](https://registry.terraform.io/providers/oboukili/argocd/latest/docs/resources/application) | resource |
| [helm_release.helm_dashboard](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubernetes_namespace.helm_dashboard_namespace](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_argocd_namespace"></a> [argocd\_namespace](#input\_argocd\_namespace) | ArgoCD Namespace | `string` | `"argocd"` | no |
| <a name="input_argocd_server"></a> [argocd\_server](#input\_argocd\_server) | ArgoCD Server URL | `string` | `""` | no |
| <a name="input_argocd_token"></a> [argocd\_token](#input\_argocd\_token) | ArgoCD Token | `string` | `""` | no |
| <a name="input_cluster_url"></a> [cluster\_url](#input\_cluster\_url) | Cluster URL | `string` | `"https://kubernetes.default.svc"` | no |
| <a name="input_deploy_method"></a> [deploy\_method](#input\_deploy\_method) | Choose Deploy Method ArgoCD or Helm | `string` | n/a | yes |
| <a name="input_helm_chart_name"></a> [helm\_chart\_name](#input\_helm\_chart\_name) | Helm Chart Name | `string` | `"helm-dashboard"` | no |
| <a name="input_helm_chart_repo"></a> [helm\_chart\_repo](#input\_helm\_chart\_repo) | Helm Chart Repo | `string` | `"https://helm-charts.komodor.io"` | no |
| <a name="input_helm_chart_version"></a> [helm\_chart\_version](#input\_helm\_chart\_version) | Helm Chart Version | `string` | `"0.1.10"` | no |
| <a name="input_helm_custom_values"></a> [helm\_custom\_values](#input\_helm\_custom\_values) | Use Helm Custom Values | `bool` | `false` | no |
| <a name="input_helm_custom_values_path"></a> [helm\_custom\_values\_path](#input\_helm\_custom\_values\_path) | Helm Custom Values Path | `string` | `""` | no |
| <a name="input_helm_dashboard_name"></a> [helm\_dashboard\_name](#input\_helm\_dashboard\_name) | Helm Dashboard Name | `string` | `"helm-dashboard"` | no |
| <a name="input_helm_dashboard_namespace"></a> [helm\_dashboard\_namespace](#input\_helm\_dashboard\_namespace) | Helm Dashboard Namespace | `string` | `"helm-dashboard"` | no |
| <a name="input_helm_name"></a> [helm\_name](#input\_helm\_name) | Helm Release Name | `string` | `"helm-dashboard"` | no |
| <a name="input_kube_context"></a> [kube\_context](#input\_kube\_context) | Kubernetes Context to Use | `string` | `""` | no |
| <a name="input_kubeconfig_path"></a> [kubeconfig\_path](#input\_kubeconfig\_path) | Kubeconfig Path | `string` | `"~/.kube/config"` | no |
| <a name="input_tls_verify_skip"></a> [tls\_verify\_skip](#input\_tls\_verify\_skip) | Skip SelfSigned Certificates Validate | `bool` | `false` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->