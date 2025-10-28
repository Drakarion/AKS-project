variable "resource_group_location" {
  type        = string
  default     = "westus3"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg-aks"
}

variable "node_count" {
  type        = number
  description = "The initial quantity of nodes for the node pool."
  default     = 1
}

variable "username" {
  type        = string
  default     = "azureuser"
}

variable "node_min_count" {
    type = number
    default = 1
}

variable "node_max_count" {
    type = number
    default = 3
}

variable "availability_zones" {
    type = list(string)
    default = ["1", "2", "3"]
}

variable "tags" {
  type        = map(string)
  default     = { project = "nodejs-3tier", env = "dev" }
}