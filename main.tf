data "google_storage_control_organization_intelligence_findings_summary" "storage_control_organization_intelligence_findings_summary_lookup" {
  for_each = var.storage_control_organization_intelligence_findings_summary_lookup

  organization   = each.value.organization
  filter         = each.value.filter
  location       = each.value.location
  resource_scope = each.value.resource_scope
}

