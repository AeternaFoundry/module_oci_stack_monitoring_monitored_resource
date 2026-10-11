output "stack_monitoring_monitored_resources_id" {
  description = "Map of id values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no id are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stack_monitoring_monitored_resources_additional_aliases" {
  description = "Map of additional_aliases values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no additional_aliases are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.additional_aliases if v.additional_aliases != null && length(v.additional_aliases) > 0 }
}
output "stack_monitoring_monitored_resources_additional_credentials" {
  description = "Map of additional_credentials values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no additional_credentials are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.additional_credentials if v.additional_credentials != null && length(v.additional_credentials) > 0 }
}
output "stack_monitoring_monitored_resources_aliases" {
  description = "Map of aliases values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no aliases are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => one(v.aliases) if v.aliases != null && length(v.aliases) > 0 }
}
output "stack_monitoring_monitored_resources_compartment_id" {
  description = "Map of compartment_id values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no compartment_id are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "stack_monitoring_monitored_resources_credentials" {
  description = "Map of credentials values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no credentials are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
}
output "stack_monitoring_monitored_resources_database_connection_details" {
  description = "Map of database_connection_details values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no database_connection_details are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => one(v.database_connection_details) if v.database_connection_details != null && length(v.database_connection_details) > 0 }
}
output "stack_monitoring_monitored_resources_defined_tags" {
  description = "Map of defined_tags values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no defined_tags are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "stack_monitoring_monitored_resources_display_name" {
  description = "Map of display_name values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no display_name are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "stack_monitoring_monitored_resources_external_id" {
  description = "Map of external_id values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no external_id are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.external_id if v.external_id != null && length(v.external_id) > 0 }
}
output "stack_monitoring_monitored_resources_external_resource_id" {
  description = "Map of external_resource_id values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no external_resource_id are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.external_resource_id if v.external_resource_id != null && length(v.external_resource_id) > 0 }
}
output "stack_monitoring_monitored_resources_freeform_tags" {
  description = "Map of freeform_tags values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "stack_monitoring_monitored_resources_host_name" {
  description = "Map of host_name values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no host_name are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.host_name if v.host_name != null && length(v.host_name) > 0 }
}
output "stack_monitoring_monitored_resources_license" {
  description = "Map of license values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no license are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.license if v.license != null && length(v.license) > 0 }
}
output "stack_monitoring_monitored_resources_management_agent_id" {
  description = "Map of management_agent_id values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no management_agent_id are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.management_agent_id if v.management_agent_id != null && length(v.management_agent_id) > 0 }
}
output "stack_monitoring_monitored_resources_name" {
  description = "Map of name values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no name are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.name if v.name != null && length(v.name) > 0 }
}
output "stack_monitoring_monitored_resources_properties" {
  description = "Map of properties values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no properties are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.properties if v.properties != null && length(v.properties) > 0 }
}
output "stack_monitoring_monitored_resources_resource_category" {
  description = "Map of resource_category values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no resource_category are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.resource_category if v.resource_category != null && length(v.resource_category) > 0 }
}
output "stack_monitoring_monitored_resources_resource_time_zone" {
  description = "Map of resource_time_zone values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no resource_time_zone are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.resource_time_zone if v.resource_time_zone != null && length(v.resource_time_zone) > 0 }
}
output "stack_monitoring_monitored_resources_source_type" {
  description = "Map of source_type values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no source_type are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.source_type if v.source_type != null && length(v.source_type) > 0 }
}
output "stack_monitoring_monitored_resources_state" {
  description = "Map of state values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no state are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.state if v.state != null && length(v.state) > 0 }
}
output "stack_monitoring_monitored_resources_system_tags" {
  description = "Map of system_tags values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no system_tags are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "stack_monitoring_monitored_resources_tenant_id" {
  description = "Map of tenant_id values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no tenant_id are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
}
output "stack_monitoring_monitored_resources_time_created" {
  description = "Map of time_created values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no time_created are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "stack_monitoring_monitored_resources_time_updated" {
  description = "Map of time_updated values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no time_updated are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "stack_monitoring_monitored_resources_type" {
  description = "Map of type values across all stack_monitoring_monitored_resources, keyed the same as var.stack_monitoring_monitored_resources except keys with no type are omitted"
  value       = { for k, v in oci_stack_monitoring_monitored_resource.stack_monitoring_monitored_resources : k => v.type if v.type != null && length(v.type) > 0 }
}

