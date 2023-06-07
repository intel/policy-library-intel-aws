# aws_db_instance deny unencrypted storage types (Security)

| Provider            | Category                 |
|---------------------|--------------------------|
| aws                 | Infrastructure (IaaS)    |

## Description

This Sentinel policy checks that the instances are configured with encrypted storage.

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
        Parameter   :storage_encrypted
        Check       :storage_encrypted is

        true

        ========================================================================
        RESOURCE VIOLATIONS
        The configured server uses unencrypted storage
        ========================================================================
         name       :rds
         type       :aws_db_instance
         address    :module.optimized-mysql-server.aws_db_instance.rds
         message    :rds uses unencrypted storage.
        ------------------------------------------------------------------------
         Resources out of compliance: 1
        ------------------------------------------------------------------------

        Value:
          true
```
