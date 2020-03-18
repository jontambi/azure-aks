resource "azurerm_resource_group" "vale-resource-group" {
  location = var.location
  name = "${var.prefix}-resources"
}

module "ssh-key" {
  source = "../../modules/ssh-key"
  public_ssh_key = var.public_ssh_key == "" ? "" : var.public_ssh_key
}

module "vale-aks-dev" {
  source = "../../modules/azure-aks"
  prefix = var.prefix
  resource_group_name = azurerm_resource_group.vale-resource-group.name
  location = azurerm_resource_group.vale-resource-group.location
  admin_username = var.admin_username
  admin_public_ssh_key = var.public_ssh_key == "" ? module.ssh-key.public_ssh_key : var.public_ssh_key
  agents_size = var.agents_size
  agents_count = var.agents_count
  kubernetes_version = var.kubernetes_version
  service_principal_client_id = var.CLIENT_ID
  service_principal_client_secret = var.CLIENT_SECRET
}