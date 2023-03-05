# Sets the "backend" used to store Terraform state.
# This is required to make continous delivery work.

terraform {
    backend "azurerm" {
        resource_group_name  = "terrraform"
        storage_account_name = "terrraform"
        container_name       = "terrraform"
        key                  = "terraform.tfstate"
    }
}
