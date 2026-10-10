output "config_retention_configurations_id" {
  description = "Map of id values across all config_retention_configurations, keyed the same as var.config_retention_configurations"
  value       = { for k, v in aws_config_retention_configuration.config_retention_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "config_retention_configurations_name" {
  description = "Map of name values across all config_retention_configurations, keyed the same as var.config_retention_configurations"
  value       = { for k, v in aws_config_retention_configuration.config_retention_configurations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "config_retention_configurations_region" {
  description = "Map of region values across all config_retention_configurations, keyed the same as var.config_retention_configurations"
  value       = { for k, v in aws_config_retention_configuration.config_retention_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "config_retention_configurations_retention_period_in_days" {
  description = "Map of retention_period_in_days values across all config_retention_configurations, keyed the same as var.config_retention_configurations"
  value       = { for k, v in aws_config_retention_configuration.config_retention_configurations : k => v.retention_period_in_days if v.retention_period_in_days != null }
}

