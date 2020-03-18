#Outputs
output "cluster_id" {
  value = azurerm_kubernetes_cluster.vale-aks-cluster.id
}

output "client_key" {
  value = azurerm_kubernetes_cluster.vale-aks-cluster.kube_config[0].client_key
}

output "client_certificate" {
  value = azurerm_kubernetes_cluster.vale-aks-cluster.kube_config[0].client_certificate
}

output "cluster_ca_certificate" {
  value = azurerm_kubernetes_cluster.vale-aks-cluster.kube_config[0].cluster_ca_certificate
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.vale-aks-cluster.kube_config_raw
}

output "host" {
  value = azurerm_kubernetes_cluster.vale-aks-cluster.kube_config[0].host
}

output "username" {
  value = azurerm_kubernetes_cluster.vale-aks-cluster.kube_config[0].username
}

output "password" {
  value = azurerm_kubernetes_cluster.vale-aks-cluster.kube_config[0].password
}

output "cluster_resource_group" {
  value = azurerm_kubernetes_cluster.vale-aks-cluster.name
}

output "client_id" {
  value = azurerm_kubernetes_cluster.vale-aks-cluster.service_principal[0].client_id
}

output "client_secret" {
  value = azurerm_kubernetes_cluster.vale-aks-cluster.service_principal[0].client_secret
}

output "location" {
  value = azurerm_kubernetes_cluster.vale-aks-cluster.location
}
