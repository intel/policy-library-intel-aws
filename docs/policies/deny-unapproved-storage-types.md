# Ensure RDS instances are configured with a high performance storage type

| Provider            | Category                 |
|---------------------|--------------------------|
| aws                 | Infrastructure (IaaS)    |

## Description

This Sentinel policy checks that the instances are configured with an `io1` storage type for better performance.

## Policy Results (Pass)

```bash
    trace:
      deny-unapproved-storage-types.sentinel:30:1 - Rule "main"
        Description:
          --------------------------------------------------------
                              _       _       _
                             (_)     | |     | |
                              _ _ __ | |_ ___| |
                             | | '_ \| __/ _ \ |
                             | | | | | ||  __/ |
                             |_|_| |_|\__\___|_|

          --------------------------------------------------------
          Name:        deny-unapproved-storage-types.sentinel
          Category:    Infrastructure (IaaS)
          Provider:    hashicorp/aws
          Resource:    aws_db_instance
          Parameter:   storage_type

          Check:       storage_type does not contain: io1
          --------------------------------------------------------
           The configured storage_type should io1 for better performance
          --------------------------------------------------------

        Value:
          true
```
