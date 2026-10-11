variable "stack_monitoring_monitored_resources" {
  description = <<EOT
Map of stack_monitoring_monitored_resources, attributes below
Required:
    - compartment_id
    - name
    - type
Optional:
    - defined_tags
    - display_name
    - external_id
    - external_resource_id
    - freeform_tags
    - host_name
    - license
    - management_agent_id
    - resource_time_zone
    - additional_aliases (block):
        - credential (required, block):
            - name (required)
            - service (required)
            - source (required)
        - name (required)
        - source (required)
    - additional_credentials (block):
        - credential_type (optional)
        - description (optional)
        - key_id (optional)
        - name (optional)
        - properties (optional, block):
            - name (optional)
            - value (optional)
        - source (optional)
        - type (optional)
    - aliases (block):
        - credential (required, block):
            - name (required)
            - service (required)
            - source (required)
        - name (required)
        - source (required)
    - credentials (block):
        - credential_type (optional)
        - description (optional)
        - key_id (optional)
        - name (optional)
        - properties (optional, block):
            - name (optional)
            - value (optional)
        - source (optional)
        - type (optional)
    - database_connection_details (block):
        - connector_id (optional)
        - db_id (optional)
        - db_unique_name (optional)
        - port (required)
        - protocol (required)
        - service_name (required)
        - ssl_secret_id (optional)
    - properties (block):
        - name (optional)
        - value (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id       = string
    name                 = string
    type                 = string
    defined_tags         = optional(map(string))
    display_name         = optional(string)
    external_id          = optional(string)
    external_resource_id = optional(string)
    freeform_tags        = optional(map(string))
    host_name            = optional(string)
    license              = optional(string)
    management_agent_id  = optional(string)
    resource_time_zone   = optional(string)
    additional_aliases = optional(list(object({
      credential = object({
        name    = string
        service = string
        source  = string
      })
      name   = string
      source = string
    })))
    additional_credentials = optional(list(object({
      credential_type = optional(string)
      description     = optional(string)
      key_id          = optional(string)
      name            = optional(string)
      properties = optional(list(object({
        name  = optional(string)
        value = optional(string)
      })))
      source = optional(string)
      type   = optional(string)
    })))
    aliases = optional(object({
      credential = object({
        name    = string
        service = string
        source  = string
      })
      name   = string
      source = string
    }))
    credentials = optional(object({
      credential_type = optional(string)
      description     = optional(string)
      key_id          = optional(string)
      name            = optional(string)
      properties = optional(list(object({
        name  = optional(string)
        value = optional(string)
      })))
      source = optional(string)
      type   = optional(string)
    }))
    database_connection_details = optional(object({
      connector_id   = optional(string)
      db_id          = optional(string)
      db_unique_name = optional(string)
      port           = number
      protocol       = string
      service_name   = string
      ssl_secret_id  = optional(string)
    }))
    properties = optional(list(object({
      name  = optional(string)
      value = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.stack_monitoring_monitored_resources : (
        v.additional_credentials == null || alltrue([for item in v.additional_credentials : (item.credential_type == null || (contains([for v in ["ENCRYPTED", "EXISTING", "PLAINTEXT"] : lower(v)], lower(item.credential_type))))])
      )
    ])
    error_message = "must be one of: \"ENCRYPTED\", \"EXISTING\", \"PLAINTEXT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.stack_monitoring_monitored_resources : (
        v.credentials == null || (v.credentials.credential_type == null || (contains([for v in ["ENCRYPTED", "EXISTING", "PLAINTEXT"] : lower(v)], lower(v.credentials.credential_type))))
      )
    ])
    error_message = "must be one of: \"ENCRYPTED\", \"EXISTING\", \"PLAINTEXT\""
  }
}

