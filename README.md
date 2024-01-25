<p align="center">
  <img src="https://github.com/intel/policy-library-intel-aws/blob/main/images/logo-classicblue-800px.png?raw=true" alt="Intel Logo" width="250"/>
</p>

# AWS Sentinel Policies - Intel Cloud Optimization Modules

© Copyright 2022, Intel Corporation

## Sentinel Policies for AWS Modules

This library provides prescriptive Sentinel policies that restrict Terraform deployed resources to a list of allowed instance types on Amazon Web Services (AWS) as well as other cloud best practices. The policies that are contained in this library are based on the latest [performance and benchmarking tests](https://www.intel.com/content/www/us/en/developer/topic-technology/cloud/cloud-performance.html?f:@stm_10381_en=%5BAmazon%20Web%20Services%5D) from Intel. Terraform Cloud and Enterprise users can use the policies in this library to enable intelligent developer decisions when deploying cloud infrastructure by *advising* developers of more optimal instance types for their Terraform resources or creating *mandatory* enforcements to control costs and create predictable and standardized infrastructure. 

## Getting Started

**Required Versions**

Sentinel: [>=0.24.0](https://developer.hashicorp.com/sentinel/install)
Terraform Cloud : Use Enhanced Policy Sets with a Sentinel version [>=0.24.0](https://developer.hashicorp.com/terraform/cloud-docs/policy-enforcement/manage-policy-sets)

**Set Up**

To get started using these policies fork the AWS Policy Library from the github repository. This will ensure that all necessary components for the policies are included and allows you to easily stay up to date when new versions of the recommended instance list or new policies are released. 

Note that all policies are set to a default of **advisory** mode and will NOT impact deployments until changed to either **soft-mandatory** or **hard-mandatory**. 
See https://developer.hashicorp.com/terraform/cloud-docs/policy-enforcement/manage-policy-sets#sentinel for more information regarding Sentinel enforcement modes.

1. Log in to github and browse to the policy library repository: https://github.com/intel/policy-library-intel-aws
2. Fork the repository: https://docs.github.com/en/get-started/quickstart/fork-a-repo
3. Log into Terraform Enterprise or Terraform Cloud for Business and add the newly forked repository as a Version Controlled policy set: https://developer.hashicorp.com/terraform/cloud-docs/policy-enforcement/manage-policy-sets#create-policy-sets
4. Ensure Policy Set is set to `Enhanced` and that the `Runtime Version` is at least `0.24.0` . Then apply the policy set to your workspaces or globally as desired
5. Update the `sentinel.hcl` to **soft-mandatory** or **hard-mandatory** policies to harden governance and force rather than inform developers
6. When new policies are released simply sync your forked repository to receive the new policies and instance types: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork (Note this will set policies back to **advisory**)
7. New instance lists will automatically be synced from the main Intel repository without syncing the fork. This is done with a remote source in the `sentinel.hcl` and can be modified. See the *How to Use* section for more information.

**Terraform Registry**

If you are using the Terraform Registry you must add an import block to your `sentinel.hcl` file in order for these policies to function. Copy the code snippet below and paste it into your `sentinel.hcl` file:

```
import "static" "approved" {
source = "http::http://raw.githubusercontent.com/intel/policy-library-intel-aws/main/approved.json"
format = "json"
}
```

## How to Use

**Customize Instance Lists**

Intel policy libraries are designed by default to automatically use the latest list of recommended instance types provided by Intel for a given Terraform resource. This is acheived by using a remote source in the `sentinel.hcl` file for the `approved.json` located in the root of this repository. It is possible to modify both the list of allowed instance types and the behavior of automatically retriving new recommended instance lists. 

In order to modify the list of allowed instance types for a resource you must first change the sourcing of the `approved.json` in the `sentinel.hcl` to : 

```
import "static" "approved" {
source = "./approved.json"
format = "json"
}
```

Then identify the relevant content within the `approved.json` file. Do this by browsing to the `intel-cloud-resource-unapproved-instance-type` policy you would like to modify in the `policies` folder. For this example, note the value *awsautoscaling* for `doc.allowed` to identify the section to modify: 

```
doc = {
"allowed":   approved.awsautoscaling,
```

This will align to the section within the `approved.json` that this policy will use for it's list of allowed instance types. 

**Optimizing AI with AMX (Intel Advanced Matrix Extensions)**

Intel offers an additional list of instances that can be used to maximize AI performance by deploying on [AMX](https://www.intel.com/content/www/us/en/products/docs/accelerator-engines/advanced-matrix-extensions/overview.html) capable hardware. In order to switch a policy from the default Intel list to the AMX list you must change the value of `doc.allowed` within the policy you wish to modify. The following example demonstrates what this could look like : 

Original Intel List:
```
doc = {
"allowed":   approved.awsautoscaling,
```

AMX List for AI Workloads:
```
doc = {
"allowed":   amx.awsautoscaling,
```
Note that the `amx.json` file is sourced remotely and will automatically update with new instances. This behavior and list can be modified. 

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
