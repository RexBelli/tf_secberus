resource "secberus_rule" "testrule" {
  description = "my test rule desc modification"
  summary = ""
  remediation_steps = ""
  alert_summary_tmpl = ""
  policy_id = "CzKNR5fCK5wt"
  priority = 5.0
  org_id = secberus_organization.fastly.id
  score = 0.0
  subscribed = true

  logic = file("./rules/test.rule")

  resources {
    id = local.resources["GCP-logging"].id
    name = local.resources["GCP-logging"].name
    resource_id = local.resources["GCP-logging"].resource_id
    data_provider = local.resources["GCP-logging"].data_provider
  }
}
