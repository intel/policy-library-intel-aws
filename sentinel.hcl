policy "deny-unapproved-instance-types" {
  source = "./policies/deny-unapproved-instance-types/deny-unapproved-instance-types.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "deny-unapproved-disk-types" {
  source = "./policies/deny-unapproved-disk-types/deny-unapproved-disk-types.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "deny-unencrypted-database-instances" {
  source = "./policies/deny-unencrypted-database-instances/deny-unencrypted-database-instances.sentinel"
  enforcement_level = "soft-mandatory"
}

module "tfplan-functions" {
  source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfconfig-functions" {
  source = "./common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "tfrun-functions" {
  source = "./common-functions/tfrun-functions/tfrun-functions.sentinel"
}

module "tfstate-functions" {
  source = "./common-functions/tfstate-functions/tfstate-functions.sentinel"
}
