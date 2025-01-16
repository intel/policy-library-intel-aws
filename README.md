<p align="center">
  <img src="https://github.com/intel/policy-library-intel-aws/blob/main/images/logo-classicblue-800px.png?raw=true" alt="Intel Logo" width="250"/>
</p>

# Deprecation Notice
A new version of this library is now available at [github.com/intel/policy-library-intel](https://github.com/intel/intel-policy-library). The new library includes enhanced features to keep developers informed of optimal instance selection and provides notifications when Intel releases new recommended instance types. We encourage all users to transition to the new library to take advantage of these improvements.

# AWS Sentinel Policies - Intel Cloud Optimization Modules

© Copyright 2022, Intel Corporation

## Sentinel Policies for AWS Modules

This library, provides prescriptive Sentinel policies that optimize Terraform deployed resources on Amazon Web Services (AWS). The policies that are contained in this library are based on the latest [performance and benchmarking tests](https://www.intel.com/content/www/us/en/developer/topic-technology/cloud/cloud-performance.html?f:@stm_10381_en=%5BAmazon%20Web%20Services%5D). Terraform Cloud and Enterprise users can use the policies in this library to enable intelligent developer decisions when deploying cloud infrastructure by choosing the best price for performance instance types for their cloud resources. 

## Getting Started

**Required Versions**

Sentinel : [>=0.24.0](https://developer.hashicorp.com/sentinel/install)  
Terraform Cloud : Use Enhanced Policy Sets with a Sentinel version [>=0.24.0](https://developer.hashicorp.com/terraform/cloud-docs/policy-enforcement/manage-policy-sets)

**Set Up**

To get started using these policies fork the AWS Policy Library from the github repository. This will ensure that all necessary components for the policies are included and allows you to easily stay up to date when new versions of the recommended instance list are released. 

Note that all policies are set to a default of **advisory** mode and will NOT impact deployments until changed to either **soft-mandatory** or **hard-mandatory**. 
See https://developer.hashicorp.com/terraform/cloud-docs/policy-enforcement/manage-policy-sets#sentinel for more information regarding Sentinel enforcement modes.

1. Log in to github and browse to the policy library repository: https://github.com/intel/policy-library-intel-aws
2. Fork the repository: https://docs.github.com/en/get-started/quickstart/fork-a-repo
3. Log into Terraform Enterprise or Terraform Cloud for Business and add the newly forked repository as a Version Controlled policy set: https://developer.hashicorp.com/terraform/cloud-docs/policy-enforcement/manage-policy-sets#create-policy-sets
4. Apply the policy set to your workspaces or globally as desired
5. Update the `sentinel.hcl` to **soft-mandatory** or **hard-mandatory** policies to harden governance and force rather than inform developers
6. When new versions are released simply sync your forked repository to be updated to the latest recommended instance list: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork (Note this will set policies back to **advisory**)

## How to Use

**Sentinel Test**

When using sentinel test in a remote directory against a policy that contains a static import (like the `deny-unapproved-instance-type` policies) additional commands and arguments must be passed in order for the test to run successfully. Execute the following command or another like it to test policies at the root level of this repository :

`find . -name "*.sentinel" -type f -execdir sentinel test \;`

**Customize Instance Lists**

Intel policy libraries are designed by default to  use the latest list of recommended instance types provided by Intel for a given Terraform resource. It is possible to modify both the list of allowed instance types and the behavior of automatically retriving new recommended instance lists. 

In order to modify the list of allowed instance types for a resource you must first identify the relevant content within the `approved.json` file. Do this by browsing to the `intel-cloud-resource-unapproved-instance-type.sentinel` policy you would like to modify in the `policies` folder. For this example, note the value *awsautoscaling* for `doc.allowed` to identify the section of the `approved.json` to modify: 

```

doc = {
"allowed":   approved.awsautoscaling,

```

This will correspond to the section `awsautoscaling` within the `approved.json` that this policy will use for it's list of allowed instance types.

## Automatic Approved Instance List Retrieval

It is  possible to automatically retrieve new recommended instance types from Intel. In order to automatically receive updates to the allowed instance types list modify your `sentinel.hcl` import for the json data to reflect Intel's github repository. 

**NOTE**

Automatic retrieval of allowed instance types is not an editable entity. Using a remote source for the JSON data reduces the administrative burden of keeping instance lists up to date and ensures the most performant, optimized and secure hardware from Intel will be used but may have unintended consequences as lists are updated without user intervention. Be sure to understand the behavior of automatically retrieving allowed instance lists before proceeding.

In order to automatically receive updates to the `approved.json` without syncing your repo fork you must modify the `sentinel.hcl` file and change the static import from a local source to a remote:

```

import "static" "approved" {
  source = "http::http://raw.githubusercontent.com/intel/policy-library-intel-aws/main/approved.json"
  format = "json"
}

```

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
- intel-aws-aws-emr-cluster-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-aws-emr-cluster-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-aws-emr-cluster-deny-unapproved-instance-types.sentinel))
- intel-aws-aws-emr-instance-fleet-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-aws-emr-instance-fleet-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-aws-emr-instance-fleet-deny-unapproved-instance-types.sentinel))
- intel-aws-instance-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-instance-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-instance-deny-unapproved-instance-types/intel-aws-instance-deny-unapproved-instance-types.sentinel))
- intel-aws-launch-template-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-launch-template-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-launch-template-deny-unapproved-instance-types/intel-aws-launch-template-deny-unapproved-instance-types.sentinel))
- intel-aws-aws-rds-cluster-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-aws-rds-cluster-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-aws-rds-cluster-deny-unapproved-instance-types.sentinel))
- intel-aws-aws-rds-cluster-instance-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-aws-rds-cluster-instance-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-aws-rds-cluster-instance-deny-unapproved-instance-types.sentinel))
- intel-aws-sagemaker-endpoint-configuration-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-sagemaker-endpoint-configuration-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-sagemaker-endpoint-configuration-deny-unapproved-instance-types/intel-aws-sagemaker-endpoint-configuration-deny-unapproved-instance-types.sentinel))

---

