/**
  * ## Descriptions
  * 
  * Terraform module for the creation of a Log Analytics Workspace. Resource names conform to the CAF naming convention.
  *
  */

resource "azurerm_log_analytics_workspace" "log_analytics_workspace" {
  name                               = var.log_analytics_workspace_name
  location                           = var.location
  resource_group_name                = var.resource_group_name
  sku                                = var.sku
  retention_in_days                  = var.retention_in_days
  daily_quota_gb                     = var.daily_quota_gb
  internet_ingestion_enabled         = var.internet_ingestion_enabled
  internet_query_enabled             = var.internet_query_enabled
  reservation_capacity_in_gb_per_day = var.reservation_capacity_in_gb_per_day
  tags                               = var.tags
}
