output "elastic_pools_id" {
  description = "Map of id values across all elastic_pools, keyed the same as var.elastic_pools"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.id }
}
output "elastic_pools_agent_interactive_ui" {
  description = "Map of agent_interactive_ui values across all elastic_pools, keyed the same as var.elastic_pools"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.agent_interactive_ui }
}
output "elastic_pools_auto_provision" {
  description = "Map of auto_provision values across all elastic_pools, keyed the same as var.elastic_pools"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.auto_provision }
}
output "elastic_pools_auto_update" {
  description = "Map of auto_update values across all elastic_pools, keyed the same as var.elastic_pools"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.auto_update }
}
output "elastic_pools_azure_resource_id" {
  description = "Map of azure_resource_id values across all elastic_pools, keyed the same as var.elastic_pools"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.azure_resource_id }
}
output "elastic_pools_desired_idle" {
  description = "Map of desired_idle values across all elastic_pools, keyed the same as var.elastic_pools"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.desired_idle }
}
output "elastic_pools_max_capacity" {
  description = "Map of max_capacity values across all elastic_pools, keyed the same as var.elastic_pools"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.max_capacity }
}
output "elastic_pools_name" {
  description = "Map of name values across all elastic_pools, keyed the same as var.elastic_pools"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.name }
}
output "elastic_pools_project_id" {
  description = "Map of project_id values across all elastic_pools, keyed the same as var.elastic_pools"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.project_id }
}
output "elastic_pools_recycle_after_each_use" {
  description = "Map of recycle_after_each_use values across all elastic_pools, keyed the same as var.elastic_pools"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.recycle_after_each_use }
}
output "elastic_pools_service_endpoint_id" {
  description = "Map of service_endpoint_id values across all elastic_pools, keyed the same as var.elastic_pools"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.service_endpoint_id }
}
output "elastic_pools_service_endpoint_scope" {
  description = "Map of service_endpoint_scope values across all elastic_pools, keyed the same as var.elastic_pools"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.service_endpoint_scope }
}
output "elastic_pools_time_to_live_minutes" {
  description = "Map of time_to_live_minutes values across all elastic_pools, keyed the same as var.elastic_pools"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.time_to_live_minutes }
}

