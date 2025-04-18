resource "azurerm_storage_blob" "index" {
  depends_on             = [azurerm_storage_account_static_website.static_website]
  name                   = "index.html"
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = "$web"
  type                   = "Block"
  source                 = "../static-content/index.html"
  content_type           = "text/html"
}

resource "azurerm_storage_blob" "error" {
  depends_on             = [azurerm_storage_account_static_website.static_website]
  name                   = "error.html"
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = "$web"
  type                   = "Block"
  source                 = "../static-content/error.html"
  content_type           = "text/html"
}