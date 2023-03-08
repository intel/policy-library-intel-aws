policy "intel-aws-db-instance-deny-unapproved-instance-types" {
  source = "./policies/intel-aws-db-instance-deny-unapproved-instance-types/intel-aws-db-instance-deny-unapproved-instance-types.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "intel-aws-db-instance-deny-unapproved-storage-types" {
  source = "./policies/intel-aws-db-instance-deny-unapproved-storage-types/intel-aws-db-instance-deny-unapproved-storage-types.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "intel-aws-db-instance-deny-unencrypted-database" {
  source = "./policies/intel-aws-db-instance-deny-unencrypted-database/intel-aws-db-instance-deny-unencrypted-database.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "intel-aws-instance-deny-unapproved-instance-types" {
  source = "./policies/intel-aws-instance-deny-unapproved-instance-types/intel-aws-instance-deny-unapproved-instance-types.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "intel-aws-launch-template-deny-unapproved-instance-types" {
  source = "./policies/intel-aws-launch-template-deny-unapproved-instance-types/intel-aws-launch-template-deny-unapproved-instance-types.sentinel"
  enforcement_level = "soft-mandatory"
}