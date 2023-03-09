<p align="center">
  <img src="https://github.com/intel/policy-library-intel-aws/blob/main/images/logo-classicblue-800px.png?raw=true" alt="Intel Logo" width="250"/>
</p>

# AWS Sentinel Policies - Intel Cloud Optimization Modules

© Copyright 2022, Intel Corporation

## Sentinel Policies for AWS Modules

This library, provides prescriptive Terraform and Sentinel policies that can be used to establish a seemless and performant baseline Terraform configuration for Amazon Web Services. The policies that are contained in this library are based on the [Open-Source Database Tuning Guide on 3rd Generation Intel® Xeon® Scalable Processors Based Platform](https://www.intel.com/content/dam/develop/external/us/en/documents/Open-Source-Database-Tuning-Guide-on-3rd-Generation-Intel-Xeon-Scalable-Processors.pdf). Terraform Cloud/Enterprise users can use the policies in this library to establish a foundational level of instance verification and enforcement for the database services that they are adopting in Amazon Web Services.

---

## Policies included

- intel-aws-autoscaling-group-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-azure/blob/main/docs/policies/intel-aws-autoscaling-group-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-azure/blob/main/policies/intel-aws-autoscaling-group-deny-unapproved-instance-types/intel-aws-autoscaling-group-deny-unapproved-instance-types.sentinel))
- intel-aws-db-instance-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-db-instance-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-db-instance-deny-unapproved-instance-types/intel-aws-db-instance-deny-unapproved-instance-types.sentinel))
- intel-aws-db-instance-deny-unapproved-storage-types.md ([docs](https://github.com/intel/policy-library-intel-aws/tree/main/docs/policies/intel-aws-db-instance-deny-unapproved-storage-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-db-instance-deny-unapproved-storage-types/intel-aws-db-instance-deny-unapproved-storage-types.sentinel))
- intel-aws-db-instance-deny-unencrypted-database.md ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-db-instance-deny-unencrypted-database.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-db-instance-deny-unencrypted-database/intel-aws-db-instance-deny-unencrypted-database.sentinel))
- intel-aws-eks-node-group-deny-unapproved-instance-types ([docs](https://github.com/intel/policy-library-intel-azure/blob/main/docs/policies/intel-aws-eks-node-group-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-azure/blob/main/policies/intel-aws-eks-node-group-deny-unapproved-instance-types/intel-aws-eks-node-group-deny-unapproved-instance-types.sentinel))
- intel-aws-instance-deny-unapproved-instance-types.md ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-instance-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-instance-deny-unapproved-instance-types/intel-aws-instance-deny-unapproved-instance-types.sentinel))
- intel-aws-launch-template-deny-unapproved-instance-types.md ([docs](https://github.com/intel/policy-library-intel-aws/blob/main/docs/policies/intel-aws-launch-template-deny-unapproved-instance-types.md) | [code](https://github.com/intel/policy-library-intel-aws/blob/main/policies/intel-aws-launch-template-deny-unapproved-instance-types/intel-aws-launch-template-deny-unapproved-instance-types.sentinel))
---
