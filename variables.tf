variable "log_analytics_workspace_name" {
  type        = string
  description = "The name of the Log Analytics Workspace."
}

variable "location" {
  type        = string
  description = "The location/region where the resources will be created."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group where the resources will be created."
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
}

variable "sku" {
  type        = string
  description = "Specifies the Sku of the Log Analytics Workspace. Possible values are `Free`, `PerNode`, `Premium`, `Standard`, `Standalone`, `Unlimited`, `CapacityReservation`, and `PerGB2018` (new Sku as of 2018-04-03)."
  default     = "PerGB2018"
}

variable "retention_in_days" {
  type        = number
  description = "The workspace data retention in days. Possible values are either `7` (`Free Tier only`) or range between `30` and `730`."
  default     = 30
}

variable "daily_quota_gb" {
  type        = number
  description = "The workspace daily quota for ingestion in GB. Defaults to `-1` (unlimited) if omitted. When sku is set to Free this field can be set to a maximum of `0.5` (GB), and has a default value of `0.5`."
  default     = null
}

variable "internet_ingestion_enabled" {
  type        = bool
  description = "Should the Log Analytics Workflow support ingestion over the Public Internet?"
  default     = true
}

variable "internet_query_enabled" {
  type        = bool
  description = "Should the Log Analytics Workflow support querying over the Public Internet?"
  default     = true
}

variable "reservation_capacity_in_gb_per_day" {
  type        = number
  description = "The capacity reservation level in GB for this workspace. Must be in increments of `100` between `100` and `5000`. reservation_capcity_in_gb_per_day can only be used when the sku is set to CapacityReservation."
  default     = null
}
