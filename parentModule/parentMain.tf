resource "azurerm_resource_group" "swara" {
  name     = var.name
  location = var.location
}


resource "azurerm_network_interface" "swara" {
  name                = "${var.name}-nic"
  location            = azurerm_resource_group.swara.location
  resource_group_name = azurerm_resource_group.swara.name

  ip_configuration {
    name                          = "${var.name}-testconfiguration1"
    subnet_id                     = azurerm_subnet.swara.id
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}

resource "azurerm_virtual_network" "swara" {
  name                = "${var.name}-network"
  address_space       = var.address_space
  location            = azurerm_resource_group.swara.location
  resource_group_name = azurerm_resource_group.swara.name
}

resource "azurerm_subnet" "swara" {
  name                 = "${var.name}-subnet"
  resource_group_name  = azurerm_resource_group.swara.name
  virtual_network_name = azurerm_virtual_network.swara.name
  address_prefixes     = var.address_prefixes
}


resource "azurerm_virtual_machine" "swara" {
  name                  = "${var.name}-vm"
  location              = azurerm_resource_group.swara.location
  resource_group_name   = azurerm_resource_group.swara.name
  network_interface_ids = [azurerm_network_interface.swara.id]
  vm_size               = var.vm_size

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = var.delete_os_disk_on_termination

  # Uncomment this line to delete the data disks automatically when deleting the VM
  delete_data_disks_on_termination = var.delete_data_disks_on_termination

  storage_os_disk {
    name          = var.name
    create_option = var.create_option
  }
  os_profile {
    computer_name  = var.computer_name
    admin_username = var.admin_username
    admin_password = var.admin_password
  }
}
