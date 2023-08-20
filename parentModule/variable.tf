variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "private_ip_address_allocation" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "address_prefixes" {
  type = list(string)
}

variable "vm_size" {
  type = string
}

variable "delete_os_disk_on_termination" {
  type = bool
}

variable "delete_data_disks_on_termination" {
  type = bool
}

variable "create_option" {
  type = string
}

variable "computer_name" {
  type =  string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
}

