
resource "random_id" "suffix" {
  byte_length = 4
}

resource "azurerm_storage_account" "example" {
  name                     = "${var.org_name}-${var.location}-${var.deploy_environment}-${random_id.suffix.hex}-st"
  resource_group_name      = data.azurerm_resource_group.example.name
  location                 = data.azurerm_resource_group.example.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

resource "azurerm_storage_container" "example" {
  name                  = var.storage_account_container_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}

resource "azurerm_storage_account_network_rules" "example" {
  storage_account_id = azurerm_storage_account.example.id

  default_action             = "Deny"
  bypass                     = ["AzureServices"]
  virtual_network_subnet_ids = [azurerm_subnet.example.id]
}
