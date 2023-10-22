# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = false
    }
    log_analytics_workspace {
      permanently_delete_on_destroy = true
    }
  }
}

provider "azurecaf" {
  # Configuration options
}
