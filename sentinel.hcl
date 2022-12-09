policy "deny-unapproved-instance-types" {
  source = "./policies/deny-unapproved-instance-types/deny-unapproved-instance-types.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "deny-unapproved-storage-types" {
  source = "./policies/deny-unapproved-storage-types/deny-unapproved-storage-types.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "deny-unencrypted-database-instances" {
  source = "./policies/deny-unencrypted-database-instances/deny-unencrypted-database-instances.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "deny-unapproved-vm-instances" {
  source = "./policies/deny-unapproved-vm-instances/deny-unapproved-vm-instances.sentinel"
  enforcement_level = "soft-mandatory"
}