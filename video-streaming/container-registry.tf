resource "azurerm_container_registry" "container-registry" {
    name = "flixttube"
    resource_group_name = azurerm_resource_group.flixtube.name
    location = var.location
    admin_enabled = true
    sku = "Basic"
    }
    output "registry_hostname" {
        value = azurerm_container_registry.container-registry.login_server
    }
    output "registry_un" {
        value = azurerm_container_registry.container-registry.admin_username
    }
    output "registry_ps" {
        value = azurerm_container_registry.container-registry.admin_password
        sensitive = true
    }
