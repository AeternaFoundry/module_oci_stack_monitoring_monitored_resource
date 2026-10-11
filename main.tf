resource "oci_stack_monitoring_monitored_resource" "stack_monitoring_monitored_resources" {
  for_each = var.stack_monitoring_monitored_resources

  compartment_id       = each.value.compartment_id
  name                 = each.value.name
  type                 = each.value.type
  defined_tags         = each.value.defined_tags
  display_name         = each.value.display_name
  external_id          = each.value.external_id
  external_resource_id = each.value.external_resource_id
  freeform_tags        = each.value.freeform_tags
  host_name            = each.value.host_name
  license              = each.value.license
  management_agent_id  = each.value.management_agent_id
  resource_time_zone   = each.value.resource_time_zone

  dynamic "additional_aliases" {
    for_each = each.value.additional_aliases != null ? each.value.additional_aliases : []
    content {
      credential {
        name    = additional_aliases.value.credential.name
        service = additional_aliases.value.credential.service
        source  = additional_aliases.value.credential.source
      }
      name   = additional_aliases.value.name
      source = additional_aliases.value.source
    }
  }

  dynamic "additional_credentials" {
    for_each = each.value.additional_credentials != null ? each.value.additional_credentials : []
    content {
      credential_type = additional_credentials.value.credential_type
      description     = additional_credentials.value.description
      key_id          = additional_credentials.value.key_id
      name            = additional_credentials.value.name
      dynamic "properties" {
        for_each = additional_credentials.value.properties != null ? additional_credentials.value.properties : []
        content {
          name  = properties.value.name
          value = properties.value.value
        }
      }
      source = additional_credentials.value.source
      type   = additional_credentials.value.type
    }
  }

  dynamic "aliases" {
    for_each = each.value.aliases != null ? [each.value.aliases] : []
    content {
      credential {
        name    = aliases.value.credential.name
        service = aliases.value.credential.service
        source  = aliases.value.credential.source
      }
      name   = aliases.value.name
      source = aliases.value.source
    }
  }

  dynamic "credentials" {
    for_each = each.value.credentials != null ? [each.value.credentials] : []
    content {
      credential_type = credentials.value.credential_type
      description     = credentials.value.description
      key_id          = credentials.value.key_id
      name            = credentials.value.name
      dynamic "properties" {
        for_each = credentials.value.properties != null ? credentials.value.properties : []
        content {
          name  = properties.value.name
          value = properties.value.value
        }
      }
      source = credentials.value.source
      type   = credentials.value.type
    }
  }

  dynamic "database_connection_details" {
    for_each = each.value.database_connection_details != null ? [each.value.database_connection_details] : []
    content {
      connector_id   = database_connection_details.value.connector_id
      db_id          = database_connection_details.value.db_id
      db_unique_name = database_connection_details.value.db_unique_name
      port           = database_connection_details.value.port
      protocol       = database_connection_details.value.protocol
      service_name   = database_connection_details.value.service_name
      ssl_secret_id  = database_connection_details.value.ssl_secret_id
    }
  }

  dynamic "properties" {
    for_each = each.value.properties != null ? each.value.properties : []
    content {
      name  = properties.value.name
      value = properties.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

