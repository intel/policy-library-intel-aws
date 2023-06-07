# aws_elasticache_replication_group deny unapproved instance types (Optimize)

| Provider            | Category                 |
|---------------------|--------------------------|
| aws                 | Infrastructure (IaaS)    |

## Description

Database performance is one of the most important components for enterprise applications experience. Deploying the Amazon Elasticcache instances on Intel Xeon 2nd Generation Scalable processors (code-named Cascade Lake) provides a seamless performance foundation.

This Sentinel policy checks that the instances are configured with the recommended instance types to deliver optimal cost and performance for your business criticial databases.

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
        Name        :intel-aws-elasticache-replication-group-deny-unapproved-instance-types.sentinel
        Category    :Platform (PaaS)
        Provider    :hashicorp/aws
        Resource    :aws_elasticache_replication_group
        Parameter   :node_type
        ========================================================================
        For a list of allowed parameter options see:
        https://github.com/intel/terraform-intel-aws-elasticache-redis/blob/main/policies.md


        ========================================================================
        RESOURCE VIOLATIONS
        The configured node_type should be Intel Xeon 2nd Generation(code-named Cascade Lake)
        ========================================================================
         name       : example
         type       : aws_elasticache_replication_group
         address    : aws_elasticache_replication_group.example
         message    : cache.m4.large is not an allowed server type.
        ------------------------------------------------------------------------
         Resources out of compliance: 1
        ------------------------------------------------------------------------

        Value:
          Fail
```
