# aws-emr-instance-fleet deny unapproved instance types (Optimize)

| Provider            | Category                 |
|---------------------|--------------------------|
| aws                 | Infrastructure (IaaS)    |

## Description

Server performance is one of the most important components for enterprise applications experience. Deploying the aws-emr-cluster on Intel Xeon 4th Generation Scalable processors (code-named Sapphire Rapids) provides a seamless performant and secure foundation for cloud workloads.

This Sentinel policy checks that the instances are configured with the recommended instance types to deliver optimal cost and performance for your business criticial servers.

## Policy Results (Fail)

```bash
    trace:
        Description:
    logs:
        ========================================================================
                            _       _       _
                           (_)     | |     | |
                            _ _ __ | |_ ___| |
                           | | '_ \| __/ _ \ |
                           | | | | | ||  __/ |
                           |_|_| |_|\__\___|_|

        ========================================================================
        Name        :intel-aws-aws-emr-instance-fleet-deny-unapproved-instance-types.sentinel
        Category    :Infrastructure (IaaS)
        Provider    :hashicorp/aws
        Resource    :aws_emr_instance_fleet
        Parameter   :instance_type
        ========================================================================
        For a list of allowed parameter options see:
        https://github.com/intel/policy-library-intel-aws/blob/main/policies/policies.md

        ========================================================================
        RESOURCE VIOLATIONS
        The configured server type should use an Intel Xeon 3rd Generation Scalable processor (code-named Ice Lake)
        ========================================================================
         name       : task
         type       : aws_emr_instance_fleet
         address    : aws_emr_instance_fleet.task
         message    : task uses an unallowed server type
        ------------------------------------------------------------------------
         Resources out of compliance: 1
        ------------------------------------------------------------------------
```





