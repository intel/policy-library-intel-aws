# aws_db_instance deny unapproved storage types (Optimize)

| Provider            | Category                 |
|---------------------|--------------------------|
| aws                 | Infrastructure (IaaS)    |

## Description

This Sentinel policy checks that the instances are configured with an `io1` storage type for better performance.

## Policy Results (Pass)

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
        Name        :intel-aws-db-instance-deny-unapproved-storage-types.sentinel
        Category    :Infrastructure (IaaS)
        Provider    :hashicorp/aws
        Resource    :aws_db_instance
        Parameter   :storage_type
        Check       :storage_type contains

        io1

        ========================================================================
        RESOURCE VIOLATIONS
        The configured server type should use an optimized storage type
        ========================================================================
         name       :rds
         type       :aws_db_instance
         address    :module.intel-aws-deny-unapproved-storage-types-aws-db-instance.rds
         message    :gp2 is not an allowed storage type.
        ------------------------------------------------------------------------
         Resources out of compliance: 1
        ------------------------------------------------------------------------

        Value:
          false
```
