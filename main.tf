resource "azurerm_storage_account" "example" {
  name                     = "storageaccount1"
  resource_group_name      = "example-resources"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  https_traffic_only_enabled = false # Esta es la vulnerabilidad
}

resource "azurerm_storage_account" "example2" {
  name                      = "storageaccount2"
  resource_group_name       = "example-resources"
  location                  = "West Europe"
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  https_traffic_only_enabled = false # Vulnerabilidad 1: Permite HTTP no seguro

  # Vulnerabilidad 2: Omisión de reglas de red (network_rules)
  # Al no especificar 'network_rules', el acceso predeterminado es 'Allow',
  # lo que significa que la cuenta de almacenamiento acepta tráfico
  # de la red pública (Internet) a menos que se configure un firewall.
}
