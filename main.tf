resource "azuredevops_elastic_pool" "elastic_pools" {
  for_each = var.elastic_pools

  azure_resource_id      = each.value.azure_resource_id
  desired_idle           = each.value.desired_idle
  max_capacity           = each.value.max_capacity
  name                   = each.value.name
  service_endpoint_id    = each.value.service_endpoint_id
  service_endpoint_scope = each.value.service_endpoint_scope
  agent_interactive_ui   = each.value.agent_interactive_ui
  auto_provision         = each.value.auto_provision
  auto_update            = each.value.auto_update
  project_id             = each.value.project_id
  recycle_after_each_use = each.value.recycle_after_each_use
  time_to_live_minutes   = each.value.time_to_live_minutes

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

