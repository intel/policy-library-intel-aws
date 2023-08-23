# aws_autoscaling_group deny unapproved instance types (Optimize)

| Provider            | Category                 |
|---------------------|--------------------------|
| aws                 | Infrastructure (IaaS)    |

## Description

Server performance is one of the most important components for enterprise applications experience. Deploying the AWS launch templates on Intel Xeon 4th Generation Scalable processors (code-named Sapphire Rapids) provides a seamless performance foundation.

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
        Name        :intel-aws-autoscaling-group-deny-unapproved-instance-types.sentinel
        Category    :Platform (PaaS)
        Provider    :hashicorp/aws
        Resource    :aws_autoscaling_group
        Parameter   :instance_type
        Check       :instance_type contains

        For a list of allowed instance types see:
        https://github.com/intel/terraform-intel-aws-eks/blob/main/policies.md

        ========================================================================
        RESOURCE VIOLATIONS
        The configured server type should use an Intel Xeon 3rd Generation Scalable processor (code-named Ice Lake)
        ========================================================================
         name       :bar
         type       :aws_autoscaling_group
         address    :aws_autoscaling_group.bar
         message    :bar uses an override value that is not an allowed server type.
        ------------------------------------------------------------------------
         Resources out of compliance: 1
        ------------------------------------------------------------------------

        Value:
          Fail
```
