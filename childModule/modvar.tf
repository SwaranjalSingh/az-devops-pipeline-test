variable "modName" {
  type = string
}

variable "modLocation" {
  type = string
}

variable "modPrivate_ip_address_allocation" {
  type = string
}

variable "modAddress_space" {
  type = list(string)
}

variable "modAddress_prefixes" {
  type = list(string)
}

variable "modVm_size" {
  type = string
}

variable "modDelete_data_disks_on_termination" {
  type = bool
}

variable "modDelete_os_disk_on_termination" {
  type = bool
}

variable "mod_create_option" {
  type = string
}

variable "mod_computer_name" {
  type =  string
}

variable "mod_admin_username" {
  type = string
}

variable "mod_admin_password" {
  type = string
}