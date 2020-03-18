variable "location" {
  description = "The name of the Resource Group in which the Virtual Network"
}

## Resource Group Variables

variable "resource_group_name" {
  default = "vale-aks-rg"
}

## AKS Kubernetes cluster variables

variable "cluster_name" {
  default = "vale-aks"
}
variable "kubernetes_version" {
  description = "Version of Kubernetes to install"
  default = "1.17.0"
}

variable "prefix" {
  description = "The prefix for the resources created in the specified Azure Resource Group."
}

variable "admin_username" {
  description = "The username of the local administrator to be created on the Kubernetes cluster"
}

variable "admin_public_ssh_key" {
  description = "The SSH key to be used for the username defined in the `admin_username` variable."
}

variable "agents_count" {
  description = "The number of Agents that should exist in the Agent Pool"
}

variable "agents_size" {
  description = "The Azure VM Size of the Virtual Machines used in the Agent Pool"
}

variable "service_principal_client_id" {
  description = "The Client ID of the Service Principal assigned to Kubernetes"
}

variable "service_principal_client_secret" {
  description = "The Client Secret of the Service Principal assigned to Kubernetes"
}
