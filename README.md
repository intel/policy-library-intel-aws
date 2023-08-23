<p align="center">
  <img src="https://github.com/intel/policy-library-intel-aws/blob/main/images/logo-classicblue-800px.png?raw=true" alt="Intel Logo" width="250"/>
</p>

# AWS Sentinel Policies - Intel Cloud Optimization Modules

© Copyright 2022, Intel Corporation

## Sentinel Policies for AWS Modules

This library, provides prescriptive Sentinel policies that optimize Terraform deployed resources on Amazon Web Services (AWS). The policies that are contained in this library are based on the [Open-Source Database Tuning Guide on 3rd Generation Intel® Xeon® Scalable Processors Based Platform](https://www.intel.com/content/dam/develop/external/us/en/documents/Open-Source-Database-Tuning-Guide-on-3rd-Generation-Intel-Xeon-Scalable-Processors.pdf). Terraform Cloud and Enterprise users can use the policies in this library to enable intelligent developer decisions when deploying cloud infrastructure by choosing the best price for performance instance types for their cloud resources. 

## Getting Started

To get started using these policies fork the AWS Policy Library from the github repository. This will ensure that all necessary components for the policies are included and allows you to easily stay up to date when new versions of the recommended instance list are released. 

Note that all policies are set to a default of **advisory** mode and will NOT impact deployments until changed to either **soft-mandatory** or **hard-mandatory**. 
See https://developer.hashicorp.com/terraform/cloud-docs/policy-enforcement/manage-policy-sets#sentinel for more information regarding Sentinel enforcement modes.

1. Log in to github and browse to the policy library repository: https://github.com/intel/policy-library-intel-aws
2. Fork the repository: https://docs.github.com/en/get-started/quickstart/fork-a-repo
3. Log into Terraform Enterprise or Terraform Cloud for Business and add the newly forked repository as a Version Controlled policy set: https://developer.hashicorp.com/terraform/cloud-docs/policy-enforcement/manage-policy-sets#create-policy-sets
4. Apply the policy set to your workspaces or globally as desired
5. Update the `sentinel.hcl` to **soft-mandatory** or **hard-mandatory** policies to harden governance and force rather than inform developers
6. When new versions are released simply sync your forked repository to be updated to the latest recommended instance list: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork (Note this will set policies back to **advisory**)

---

## Policies included

- intel-aws-autoscaling-group-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-autoscaling-group-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-autoscaling-group-deny-unapproved-instance-types/intel-aws-autoscaling-group-deny-unapproved-instance-types.sentinel))
- intel-aws-databricks-cluster-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-databricks-cluster-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-databricks-cluster-deny-unapproved-instance-types/intel-aws-databricks-cluster-deny-unapproved-instance-types.sentinel))
- intel-aws-databricks-cluster-deny-unapproved-runtime-engines ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-databricks-cluster-deny-unapproved-runtime-engines.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-databricks-cluster-deny-unapproved-runtime-engines/intel-aws-databricks-cluster-deny-unapproved-runtime-engines.sentinel))
- intel-aws-databricks-cluster-enforce-spark-conf ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-databricks-cluster-enforce-spark-conf.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-databricks-cluster-enforce-spark-conf/intel-aws-databricks-cluster-enforce-spark-conf.sentinel))
- intel-aws-db-instance-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-db-instance-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-db-instance-deny-unapproved-instance-types/intel-aws-db-instance-deny-unapproved-instance-types.sentinel))
- intel-aws-db-instance-deny-unapproved-storage-types ([docs](https://github.com/intel/policy-library-intel-aws/tree/main/docs/policies/intel-aws-db-instance-deny-unapproved-storage-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-db-instance-deny-unapproved-storage-types/intel-aws-db-instance-deny-unapproved-storage-types.sentinel))
- intel-aws-db-instance-deny-unencrypted-database ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-db-instance-deny-unencrypted-database.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-db-instance-deny-unencrypted-database/intel-aws-db-instance-deny-unencrypted-database.sentinel))
- intel-aws-eks-node-group-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-eks-node-group-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-eks-node-group-deny-unapproved-instance-types/intel-aws-eks-node-group-deny-unapproved-instance-types.sentinel))
- intel-aws-elasticache-replication-group-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-elasticache-replication-group-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-elasticache-replication-group-deny-unapproved-instance-types/intel-aws-elasticache-replication-group-deny-unapproved-instance-types.sentinel))
- intel-aws-instance-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-instance-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-instance-deny-unapproved-instance-types/intel-aws-instance-deny-unapproved-instance-types.sentinel))
- intel-aws-launch-template-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-launch-template-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-launch-template-deny-unapproved-instance-types/intel-aws-launch-template-deny-unapproved-instance-types.sentinel))
- intel-aws-sagemaker-endpoint-configuration-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-sagemaker-endpoint-configuration-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-sagemaker-endpoint-configuration-deny-unapproved-instance-types/intel-aws-sagemaker-endpoint-configuration-deny-unapproved-instance-types.sentinel))

---
