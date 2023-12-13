provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "aks" {
  name     = "${var.cluster_name}-rg"
  location = var.location
}


module "aks" {
  source = "./aks.tf"

  location       = var.location
  cluster_name   = var.cluster_name
  node_count     = var.node_count
  node_vm_size   = var.node_vm_size
  dns_prefix     = var.dns_prefix
}
