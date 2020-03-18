# Create AKS Cluster
resource "azurerm_kubernetes_cluster" "vale-aks-cluster" {
  dns_prefix = var.prefix
  location = var.location
  name = "${var.prefix}-aks"
  resource_group_name = var.resource_group_name
  kubernetes_version = var.kubernetes_version

  linux_profile {
    admin_username = var.admin_username
    ssh_key {
      key_data = replace(var.admin_public_ssh_key, "\n", "")
    }
  }

#  agent_pool_profile {
#  #   name = "node-pool"
#    vm_size = var.agents_size
#    count = var.agents_count
#    os_type = "Linux"
#    os_disk_size_gb = 50
#  }

  default_node_pool {
        name            = "nodepool"
        node_count      = var.agents_count
        vm_size         = var.agents_size
    }

  service_principal {
    client_id = var.service_principal_client_id
    client_secret = var.service_principal_client_secret
  }

  tags = {
    Environment = "Development"
  }
}
