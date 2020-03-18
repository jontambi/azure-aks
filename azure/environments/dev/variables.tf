## Azure configuration variables

variable "CLIENT_ID" {
  description = "The Client ID (appId) for the Service Principal used for the AKS deployment"
}

variable "CLIENT_SECRET" {
  description = "The Client Secret (password) for the Service Principal used for the AKS deployment"
}

variable "location" {
  default = "East US"
  description = "The location for the AKS deployment"
}

variable "admin_username" {
  default = "usrvale"
  description = "The username of the local administrator to be created on the Kubernetes cluster"
}

variable "agents_count" {
  description = "The number of Agents that should exist in the Agent Pool"
  default     = 2
}

variable "kubernetes_version" {
  description = "Version of Kubernetes to install"
  default = "1.17.0"
}

variable "public_ssh_key" {
  description = "A custom ssh key to control access to the AKS cluster"
  default     = ""
}

variable "agents_size" {
  default     = "Standard_DS2_v2"
  description = "The default virtual machine size for the Kubernetes agents"
}

variable "prefix" {
  description = "The prefix for the resources created in the specified Azure Resource Group"
}
