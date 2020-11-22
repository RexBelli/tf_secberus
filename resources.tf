data "secberus_resources" "all" {}

locals {
  resources-list = flatten([
    for res in data.secberus_resources.all.resources: {
      "${res.data_provider}-${res.name}" = res
    }
  ])
  resources = {
    for item in local.resources-list:
      keys(item)[0] => values(item)[0]
  }
}
