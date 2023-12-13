variable "location" {
  description = "The Azure region in which to create resources."
  default     = "East US"
}

variable "cluster_name" {
  description = "The name of the AKS cluster."
  default     = "myAKSCluster"
}

variable "node_count" {
  description = "The number of nodes in the AKS cluster."
  default     = 3
}

variable "node_vm_size" {
  description = "The size of the VMs in the AKS cluster."
  default     = "Standard_D2s_v3"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster."
  default     = "myaksclusterdns"
}
