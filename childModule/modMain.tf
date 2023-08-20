module "swara" {
  source                           = "../parentModule"
  name                             = var.modName
  location                         = var.modLocation
  private_ip_address_allocation    = var.modPrivate_ip_address_allocation
  address_space                    = var.modAddress_space
  address_prefixes                 = var.modAddress_prefixes
  vm_size                          = var.modVm_size
  delete_data_disks_on_termination = var.modDelete_data_disks_on_termination
  delete_os_disk_on_termination    = var.modDelete_os_disk_on_termination
  create_option                    = var.mod_create_option
  computer_name                    = var.mod_computer_name
  admin_username                   = var.mod_admin_username
  admin_password                   = var.mod_admin_password
}
