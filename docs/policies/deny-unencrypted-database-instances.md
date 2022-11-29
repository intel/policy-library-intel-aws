# Ensure RDS instances are configured with storage encryption

| Provider            | Category                 |
|---------------------|--------------------------|
| aws                 | Infrastructure (IaaS)    |

## Description

This Sentinel policy checks that the instances are configured with encrypted storage.

## Policy Results (Pass)

```bash
    trace:
      deny-unencrypted-database-instances.sentinel:29:1 - Rule "main"
        Description:
          --------------------------------------------------------
                              _       _       _
                             (_)     | |     | |
                              _ _ __ | |_ ___| |
                             | | '_ \| __/ _ \ |
                             | | | | | ||  __/ |
                             |_|_| |_|\__\___|_|

          --------------------------------------------------------
          Name:        deny-unencrypted-database-instances.sentinel
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
