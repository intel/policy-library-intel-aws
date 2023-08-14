# aws_instance deny unapproved instance types (Optimize)

| Provider            | Category                 |
|---------------------|--------------------------|
| aws                 | Infrastructure (IaaS)    |

## Description

Server performance is one of the most important components for enterprise applications experience. Deploying the Amazon Instances on Intel Xeon 4th Generation Scalable processors (code-named Sapphire Rapids) provides a seamless performance foundation.

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
        Name        :intel-aws-instance-deny-unapproved-instance-types.sentinel
        Category    :Infrastructure (IaaS)
        Provider    :hashicorp/aws
        Resource    :aws_instance
        Parameter   :instance_type
        Check       :instance_type contains

        For a list of allowed instance types see:
        https://github.com/intel/terraform-intel-aws-vm/blob/main/policies.md

        ========================================================================
        RESOURCE VIOLATIONS
        The configured server type should use an Intel Xeon 3rd or 4th Generation Scalable processor (code-named Ice Lake and Sapphire Rapids)
        ========================================================================
         name       :this
         type       :aws_instance
         address    :aws_instance.this[0]
         message    :c6i.12x is not an allowed server type.
        ------------------------------------------------------------------------
         Resources out of compliance: 1
        ------------------------------------------------------------------------

        Value:
          Fail
```
