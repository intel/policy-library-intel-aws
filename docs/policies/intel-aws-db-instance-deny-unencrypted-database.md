# Ensure aws_db_instance are configured with storage encryption

| Provider            | Category                 |
|---------------------|--------------------------|
| aws                 | Infrastructure (IaaS)    |

## Description

This Sentinel policy checks that the instances are configured with encrypted storage.

## Policy Results (Pass)

```bash
    trace:
        Description:
          --------------------------------------------------------
                              _       _       _
                             (_)     | |     | |
                              _ _ __ | |_ ___| |
                             | | '_ \| __/ _ \ |
                             | | | | | ||  __/ |
                             |_|_| |_|\__\___|_|

          --------------------------------------------------------
          Name:        intel-aws-db-instance-deny-unencrypted-database.sentinel
          Category:    Infrastructure (IaaS)
          Provider:    hashicorp/aws
          Resource:    aws_db_instance
          Parameter:   storage_encrypted

          Check:       storage_encrypted is not equal to: true
          --------------------------------------------------------
           The RDS instance should utilize database encryption.
          --------------------------------------------------------

        Value:
          true
```
