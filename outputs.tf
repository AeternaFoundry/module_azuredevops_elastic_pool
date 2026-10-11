output "elastic_pools_id" {
  description = "Map of id values across all elastic_pools, keyed the same as var.elastic_pools except keys with no id are omitted"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elastic_pools_agent_interactive_ui" {
  description = "Map of agent_interactive_ui values across all elastic_pools, keyed the same as var.elastic_pools except keys with no agent_interactive_ui are omitted"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.agent_interactive_ui if v.agent_interactive_ui != null }
}
output "elastic_pools_auto_provision" {
  description = "Map of auto_provision values across all elastic_pools, keyed the same as var.elastic_pools except keys with no auto_provision are omitted"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.auto_provision if v.auto_provision != null }
}
output "elastic_pools_auto_update" {
  description = "Map of auto_update values across all elastic_pools, keyed the same as var.elastic_pools except keys with no auto_update are omitted"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.auto_update if v.auto_update != null }
}
output "elastic_pools_azure_resource_id" {
  description = "Map of azure_resource_id values across all elastic_pools, keyed the same as var.elastic_pools except keys with no azure_resource_id are omitted"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.azure_resource_id if v.azure_resource_id != null && length(v.azure_resource_id) > 0 }
}
output "elastic_pools_desired_idle" {
  description = "Map of desired_idle values across all elastic_pools, keyed the same as var.elastic_pools except keys with no desired_idle are omitted"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.desired_idle if v.desired_idle != null }
}
output "elastic_pools_max_capacity" {
  description = "Map of max_capacity values across all elastic_pools, keyed the same as var.elastic_pools except keys with no max_capacity are omitted"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.max_capacity if v.max_capacity != null }
}
output "elastic_pools_name" {
  description = "Map of name values across all elastic_pools, keyed the same as var.elastic_pools except keys with no name are omitted"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "elastic_pools_project_id" {
  description = "Map of project_id values across all elastic_pools, keyed the same as var.elastic_pools except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "elastic_pools_recycle_after_each_use" {
  description = "Map of recycle_after_each_use values across all elastic_pools, keyed the same as var.elastic_pools except keys with no recycle_after_each_use are omitted"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.recycle_after_each_use if v.recycle_after_each_use != null }
}
output "elastic_pools_service_endpoint_id" {
  description = "Map of service_endpoint_id values across all elastic_pools, keyed the same as var.elastic_pools except keys with no service_endpoint_id are omitted"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.service_endpoint_id if v.service_endpoint_id != null && length(v.service_endpoint_id) > 0 }
}
output "elastic_pools_service_endpoint_scope" {
  description = "Map of service_endpoint_scope values across all elastic_pools, keyed the same as var.elastic_pools except keys with no service_endpoint_scope are omitted"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.service_endpoint_scope if v.service_endpoint_scope != null && length(v.service_endpoint_scope) > 0 }
}
output "elastic_pools_time_to_live_minutes" {
  description = "Map of time_to_live_minutes values across all elastic_pools, keyed the same as var.elastic_pools except keys with no time_to_live_minutes are omitted"
  value       = { for k, v in azuredevops_elastic_pool.elastic_pools : k => v.time_to_live_minutes if v.time_to_live_minutes != null }
}

