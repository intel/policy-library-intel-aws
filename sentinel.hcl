import "static" "approved" {
  source = "./approved.json"
  format = "json"
}

import "module" "policy_summary" {
  source = "./modules/policysummary.sentinel"
}

policy "intel-aws-autoscaling-group-deny-unapproved-instance-types" {
  source = "./policies/intel-aws-autoscaling-group-deny-unapproved-instance-types/intel-aws-autoscaling-group-deny-unapproved-instance-types.sentinel"
  enforcement_level = "advisory"
}

policy "intel-aws-databricks-cluster-deny-unapproved-instance-types" {
  source = "./policies/intel-aws-databricks-cluster-deny-unapproved-instance-types/intel-aws-databricks-cluster-deny-unapproved-instance-types.sentinel"
  enforcement_level = "advisory"
}

policy "intel-aws-databricks-cluster-deny-unapproved-runtime-engines" {
  source = "./policies/intel-aws-databricks-cluster-deny-unapproved-runtime-engines/intel-aws-databricks-cluster-deny-unapproved-runtime-engines.sentinel"
  enforcement_level = "advisory"
}

policy "intel-aws-databricks-cluster-enforce-spark-conf" {
  source = "./policies/intel-aws-databricks-cluster-enforce-spark-conf/intel-aws-databricks-cluster-enforce-spark-conf.sentinel"
  enforcement_level = "advisory"
}

policy "intel-aws-db-instance-deny-unapproved-instance-types" {
  source = "./policies/intel-aws-db-instance-deny-unapproved-instance-types/intel-aws-db-instance-deny-unapproved-instance-types.sentinel"
  enforcement_level = "advisory"
}

policy "intel-aws-db-instance-deny-unapproved-storage-types" {
  source = "./policies/intel-aws-db-instance-deny-unapproved-storage-types/intel-aws-db-instance-deny-unapproved-storage-types.sentinel"
  enforcement_level = "advisory"
}

policy "intel-aws-db-instance-deny-unencrypted-database" {
  source = "./policies/intel-aws-db-instance-deny-unencrypted-database/intel-aws-db-instance-deny-unencrypted-database.sentinel"
  enforcement_level = "advisory"
}

policy "intel-aws-eks-node-group-deny-unapproved-instance-types" {
  source = "./policies/intel-aws-eks-node-group-deny-unapproved-instance-types/intel-aws-eks-node-group-deny-unapproved-instance-types.sentinel"
  enforcement_level = "advisory"
}

policy "intel-aws-elasticache-replication-group-unapproved-instance-types" {
  source = "./policies/intel-aws-elasticache-replication-group-unapproved-instance-types/intel-aws-elasticache-replication-group-unapproved-instance-types.sentinel"
  enforcement_level = "advisory"
}

policy "intel-aws-emr-cluster-deny-unapproved-instance-types" {
  source = "./policies/intel-aws-emr-cluster-deny-unapproved-instance-types/intel-aws-emr-cluster-deny-unapproved-instance-types.sentinel"
  enforcement_level = "advisory"
}

policy "intel-aws-emr-instance-fleet-deny-unapproved-instance-types" {
  source = "./policies/intel-aws-emr-instance-fleet-deny-unapproved-instance-types/intel-aws-emr-instance-fleet-deny-unapproved-instance-types.sentinel"
  enforcement_level = "advisory"
}

policy "intel-aws-instance-deny-unapproved-instance-types" {
  source = "./policies/intel-aws-instance-deny-unapproved-instance-types/intel-aws-instance-deny-unapproved-instance-types.sentinel"
  enforcement_level = "advisory"
}

policy "intel-aws-launch-template-deny-unapproved-instance-types" {
  source = "./policies/intel-aws-launch-template-deny-unapproved-instance-types/intel-aws-launch-template-deny-unapproved-instance-types.sentinel"
  enforcement_level = "advisory"
}

policy "intel-aws-rds-cluster-deny-unapproved-instance-types" {
  source = "./policies/intel-aws-rds-cluster-deny-unapproved-instance-types/intel-aws-rds-cluster-deny-unapproved-instance-types.sentinel"
  enforcement_level = "advisory"
}

policy "intel-aws-rds-cluster-instance-deny-unapproved-instance-types" {
  source = "./policies/intel-aws-rds-cluster-instance-deny-unapproved-instance-types/intel-aws-rds-cluster-instance-deny-unapproved-instance-types.sentinel"
  enforcement_level = "advisory"
}

policy "intel-aws-sagemaker-endpoint-configuration-deny-unapproved-instance-types" {
  source = "./policies/intel-aws-sagemaker-endpoint-configuration-deny-unapproved-instance-types/intel-aws-sagemaker-endpoint-configuration-deny-unapproved-instance-types.sentinel"
  enforcement_level = "advisory"
}

