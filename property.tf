terraform {
  required_providers {
    akamai = {
      source  = "akamai/akamai"
      version = ">= 2.0.0"
    }
  }
  required_version = ">= 0.13"
}

provider "akamai" {
  edgerc         = var.edgerc_path
}

data "akamai_group" "group" {
  group_name  = "TestGroup"
  contract_id = "ctr_C-1J6UEC9"
}

data "akamai_contract" "contract" {
  group_name = data.akamai_group.group.group_name
}


resource "akamai_property" "property" {
  name        = "terraform-demo.test.cloud.ibm.com"
  contract_id = data.akamai_contract.contract.id
  group_id    = data.akamai_group.group.id
  product_id  = var.product_id
  rule_format = var.rule_format
  hostnames {
    cname_from             = "terraform-demo.test.cloud.ibm.com"
    cname_to               = "terraform-demo.test.cloud.ibm.com.edgekey.net"
    cert_provisioning_type = "CPS_MANAGED"
  }
  rules = data.akamai_property_rules_builder.property_rule_default.json
}
