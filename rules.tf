resource "secberus_rule" "only-fastly-bastion-ssh-access" {
  description = "Alert if SSH is allowed from a non-Fastly bastion IP"
  summary = ""
  remediation_steps = ""
  alert_summary_tmpl = ""
  policy_id = "CzKNR5fCK5wt"
  priority = 5.0
  org_id = secberus_organization.fastly.id
  score = 0.0
  subscribed = true

  logic = file("./rules/only-fastly-bastion-ssh-access.rule")

  resources {
    id = local.resources["GCP-compute"].id
    name = local.resources["GCP-compute"].name
    resource_id = local.resources["GCP-compute"].resource_id
    data_provider = local.resources["GCP-compute"].data_provider
  }
}
