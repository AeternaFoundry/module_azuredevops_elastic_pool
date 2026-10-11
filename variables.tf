variable "elastic_pools" {
  description = <<EOT
Map of elastic_pools, attributes below
Required:
    - azure_resource_id
    - desired_idle
    - max_capacity
    - name
    - service_endpoint_id
    - service_endpoint_scope
Optional:
    - agent_interactive_ui
    - auto_provision
    - auto_update
    - project_id
    - recycle_after_each_use
    - time_to_live_minutes
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    azure_resource_id      = string
    desired_idle           = number
    max_capacity           = number
    name                   = string
    service_endpoint_id    = string
    service_endpoint_scope = string
    agent_interactive_ui   = optional(bool)
    auto_provision         = optional(bool)
    auto_update            = optional(bool)
    project_id             = optional(string)
    recycle_after_each_use = optional(bool)
    time_to_live_minutes   = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.elastic_pools : (
        length(trimspace(v.name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.elastic_pools : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.service_endpoint_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.elastic_pools : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.service_endpoint_scope))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.elastic_pools : (
        v.desired_idle >= 0
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.elastic_pools : (
        v.max_capacity >= 0
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.elastic_pools : (
        v.time_to_live_minutes == null || (v.time_to_live_minutes >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
}

