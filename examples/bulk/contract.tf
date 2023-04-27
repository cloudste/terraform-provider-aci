resource "aci_l4_l7_service_graph_template" "rest_abs_graph" {
  tenant_dn = data.aci_tenant.tenant_for_contract.id
  name      = "testgraph"
}

resource "aci_l4_l7_service_graph_template" "rest_abs_graph2" {
  tenant_dn = data.aci_tenant.tenant_for_contract.id
  name      = "testgraph2"
}

resource "aci_contract" "rs_prov_contract" {
  tenant_dn                = data.aci_tenant.tenant_for_contract.id
  name                     = "rs_prov_contract"
  description              = "This contract is created by terraform ACI provider"
  scope                    = "context"
  target_dscp              = "VA"
  prio                     = "unspecified"
  relation_vz_rs_graph_att = aci_l4_l7_service_graph_template.rest_abs_graph.id
}

resource "aci_contract" "rs_prov_contract2" {
  tenant_dn                = data.aci_tenant.tenant_for_contract.id
  name                     = "rs_prov_contract2"
  description              = "This contract is created by terraform ACI provider"
  scope                    = "context"
  target_dscp              = "VA"
  prio                     = "unspecified"
  relation_vz_rs_graph_att = aci_l4_l7_service_graph_template.rest_abs_graph2.id
}

resource "aci_contract" "rs_cons_contract" {
  tenant_dn                = data.aci_tenant.tenant_for_contract.id
  name                     = "rs_cons_contract"
  description              = "This contract is created by terraform ACI provider"
  scope                    = "context"
  target_dscp              = "VA"
  prio                     = "unspecified"
  relation_vz_rs_graph_att = aci_l4_l7_service_graph_template.rest_abs_graph.id
}

resource "aci_contract" "rs_cons_contract2" {
  tenant_dn                = data.aci_tenant.tenant_for_contract.id
  name                     = "rs_cons_contract2"
  description              = "This contract is created by terraform ACI provider"
  scope                    = "context"
  target_dscp              = "VA"
  prio                     = "unspecified"
  relation_vz_rs_graph_att = aci_l4_l7_service_graph_template.rest_abs_graph2.id
}

resource "aci_contract" "intra_epg_contract" {
  tenant_dn                = data.aci_tenant.tenant_for_contract.id
  name                     = "intra_epg_contract"
  description              = "This contract is created by terraform ACI provider"
  scope                    = "context"
  target_dscp              = "VA"
  prio                     = "unspecified"
  relation_vz_rs_graph_att = aci_l4_l7_service_graph_template.rest_abs_graph.id
}

resource "aci_contract" "intra_epg_contract2" {
  tenant_dn                = data.aci_tenant.tenant_for_contract.id
  name                     = "intra_epg_contract2"
  description              = "This contract is created by terraform ACI provider"
  scope                    = "context"
  target_dscp              = "VA"
  prio                     = "unspecified"
  relation_vz_rs_graph_att = aci_l4_l7_service_graph_template.rest_abs_graph2.id
}

// Taboo Contract
resource "aci_taboo_contract" "rest_taboo_con" {
  tenant_dn = aci_tenant.tenant_for_benchmark.id
  name      = "testtaboo"
}

resource "aci_taboo_contract" "rest_taboo_con2" {
  tenant_dn = aci_tenant.tenant_for_benchmark.id
  name      = "testtaboo2"
}

// Imported Contract
resource "aci_imported_contract" "rest_vz_cons_if" {
  tenant_dn = aci_tenant.tenant_for_benchmark.id
  name      = "testcontract"
}

resource "aci_imported_contract" "rest_vz_cons_if2" {
  tenant_dn = aci_tenant.tenant_for_benchmark.id
  name      = "testcontract2"
}
