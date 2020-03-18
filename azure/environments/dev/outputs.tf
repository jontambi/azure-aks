##Outputs

output "client_key" {
  value = module.vale-aks-dev.client_key
}

output "client_certificate" {
  value = module.vale-aks-dev.client_certificate
}

output "client_ca_certificate" {
  value = module.vale-aks-dev.cluster_ca_certificate
}

output "host" {
  value = module.vale-aks-dev.host
}

output "username" {
  value = module.vale-aks-dev.username
}

output "password" {
  value = module.vale-aks-dev.password
}

output "cluster_resource_group" {
  value = module.vale-aks-dev.cluster_resource_group
}

output "kube_config" {
  value = module.vale-aks-dev.kube_config
}

output "location" {
  value = module.vale-aks-dev.location
}

output "configure" {
  value = <<CONFIGURE
Run the following commands to configure kubernetes client:
$ terraform output kube_config > ~/.kube/aksconfig
$ export KUBECONFIG=~/.kube/aksconfig
Test configuration using kubectl
$ kubectl get nodes
CONFIGURE
}