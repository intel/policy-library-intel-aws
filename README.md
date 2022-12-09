<p align="center">
  <img src="https://github.com/intel/policy-library-intel-aws/blob/main/images/logo-classicblue-800px.png?raw=true" alt="Intel Logo" width="250"/>
</p>

# Intel Cloud Optimization Modules 

© Copyright 2022, Intel Corporation

## Sentinel Policies for AWS Modules

This library, provides prescriptive Terraform policies that can be used to establish a seemless and performant baseline Terraform configuration for Amazon Web Services. The policies that are contained in this library are based on the [Open-Source Database Tuning Guide on 3rd Generation Intel® Xeon® Scalable Processors Based Platform](https://www.intel.com/content/dam/develop/external/us/en/documents/Open-Source-Database-Tuning-Guide-on-3rd-Generation-Intel-Xeon-Scalable-Processors.pdf). Terraform Cloud/Enterprise users can use the policies in this library to establish a foundational level of instance verification and enforcement for the database services that they are adopting in Amazon Web Services.

---

## Policies included

- deny-unapproved-instance-types ([docs](https://github.com/OTCShare2/policy-library-intel-aws/blob/main/docs/policies/deny-unapproved-instance-types.md) | [code](https://github.com/OTCShare2/policy-library-intel-aws/blob/main/policies/deny-unapproved-instance-types/deny-unapproved-instance-types.sentinel))
- deny-unapproved-storage-types.md ([docs](https://github.com/OTCShare2/policy-library-intel-aws/tree/main/docs/policies#:~:text=deny%2Dunapproved%2Dstorage%2Dtypes.md) | [code](https://github.com/OTCShare2/policy-library-intel-aws/blob/main/policies/deny-unapproved-storage-types/deny-unapproved-storage-types.sentinel))
- deny-unencrypted-database-instances.md ([docs](https://github.com/OTCShare2/policy-library-intel-aws/blob/main/docs/policies/deny-unencrypted-database-instances.md) | [code](https://github.com/OTCShare2/policy-library-intel-aws/blob/main/policies/deny-unencrypted-database-instances/deny-unencrypted-database-instances.sentinel))
---
