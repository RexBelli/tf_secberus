resource "secberus_organization" "fastly" {
  name = "fastly"
  description = "fastly"
}
resource "secberus_organization_user_binding" "fastly" {
  org_id = secberus_organization.fastly.id
  users = ["rbelli@fastly.com"]
}


