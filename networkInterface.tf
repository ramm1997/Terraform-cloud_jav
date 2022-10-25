resource "azurerm_network_interface" "example" {
  name                = "${var.name}-nic"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = var.test
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = var.private_ip
  }
}
