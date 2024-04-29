variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

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

variable "network_interface_ids" {
  type = list(string)
  default = []
}

