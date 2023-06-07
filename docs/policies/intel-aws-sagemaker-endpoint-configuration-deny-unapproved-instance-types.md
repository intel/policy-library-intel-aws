# aws_sagemaker_endpoint_configuration deny unapproved instance types (Optimize)

| Provider            | Category                 |
|---------------------|--------------------------|
| aws                 | Infrastructure (IaaS)    |

## Description

Deploying the AWS Sagemaker endpoints on Intel Xeon 3rd Generation Scalable processors (code-named Ice Lake) provides a seamless performance foundation for your AI/ML workloads.

This Sentinel policy checks that the instances are configured with the recommended instance types to deliver optimal cost and performance for your business criticial servers.

## Policy Results (Fail)

```bash
    trace:
        Description:
        ========================================================================
                            _       _       _
                           (_)     | |     | |
                            _ _ __ | |_ ___| |
                           | | '_ \| __/ _ \ |
                           | | | | | ||  __/ |
                           |_|_| |_|\__\___|_|

        ========================================================================
        Name        :intel-aws-sagemaker-endpoint-configuration-deny-unapproved-instance-types.sentinel
        Category    :Infrastructure (IaaS)
        Provider    :hashicorp/aws
        Resource    :aws_sagemaker_endpoint_configuration
        Parameter   :instance_type
        ========================================================================
        For a list of allowed parameter options see:
        https://github.com/intel/terraform-intel-aws-sagemaker-endpoint/blob/main/policies.md

        ========================================================================
        RESOURCE VIOLATIONS
        The configured server type should use the latest generation of Intel Xeon Scalable processors
        ========================================================================
         name       : example_endpoint_configuration
         type       : aws_sagemaker_endpoint_configuration
         address    : aws_sagemaker_endpoint_configuration.example_endpoint_configuration
         message    : example_endpoint_configuration uses an unallowed server type.
        ------------------------------------------------------------------------
         Resources out of compliance: 1
        ------------------------------------------------------------------------

        Value:
          Fail
```
