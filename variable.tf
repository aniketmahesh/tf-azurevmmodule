variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

# Network Variable
variable "virtual_network_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnet_name" {
  type = string
}

variable "address_prefixes" {
  type = list(string)
}


# Network Interface variable
variable "network_interface_ids" {
  type    = list(string)
  default = []
}

# Virtual Machine Variable
variable "vm_prefix" {
  type = string
}

variable "vm_count" {
  type = number
}

variable "vm_size" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {

}


