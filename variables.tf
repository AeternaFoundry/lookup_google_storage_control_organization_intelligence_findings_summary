variable "storage_control_organization_intelligence_findings_summary_lookup" {
  description = <<EOT
Map of storage_control_organization_intelligence_findings_summary_lookup, attributes below
Required:
    - organization
Optional:
    - filter
    - location
    - resource_scope
EOT

  type = map(object({
    organization   = string
    filter         = optional(string)
    location       = optional(string)
    resource_scope = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.storage_control_organization_intelligence_findings_summary_lookup : (
        v.resource_scope == null || (contains(["PARENT", "PROJECT"], v.resource_scope))
      )
    ])
    error_message = "must be one of: \"PARENT\", \"PROJECT\""
  }
}

