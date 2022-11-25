# Ensure RDS instances are configured with an instance type that supports an Intel Xeon 3rd Generation Scalable processor (code-named Ice Lake)

| Provider            | Category                 |
|---------------------|--------------------------|
| aws                 | Infrastructure (IaaS)    |

## Description

Database performance is one of the most important components for enterprise applications experience. Deploying the Amazon Relational Database Service (RDS) instances on Intel Xeon 3rd Generation Scalable processors (code-named Ice Lake) provides a seamless performance foundation.

This Sentinel policy checks that the instances are configured with the recommended instance types to deliver increased performance for your business criticial databases.

## Policy Results (Pass)

```bash
    trace:
      deny-unapproved-instance-types.sentinel:39:1 - Rule "main"
        Description:
          --------------------------------------------------------
                              _       _       _
                             (_)     | |     | |
                              _ _ __ | |_ ___| |
                             | | '_ \| __/ _ \ |
                             | | | | | ||  __/ |
                             |_|_| |_|\__\___|_|

          --------------------------------------------------------
          Name:        deny-unapproved-instance-types.sentinel
          Category:    Infrastructure (IaaS)
          Provider:    hashicorp/aws
          Resource:    aws_db_instance
          Parameter:   instance_type

          Check:       instance_type does not contain:
                       db.m6i.large, db.m6i.xlarge
                       db.m6i.2xlarge, db.m6i.4xlarge
                       db.m6i.8xlarge, db.m6i.12xlarge
                       db.m6i.16xlarge, db.m6i.24xlarge
                       db.m6i.32xlarge, db.r6i.large
                       db.r6i.xlarge, db.r6i.2xlarge
                       db.r6i.4xlarge, db.r6i.8xlarge
                       db.r6i.12xlarge, db.r6i.16xlarge
                       db.r6i.24xlarge, db.r6i.32xlarge
          --------------------------------------------------------
          The configured instance_class should an Intel Xeon 3rd
          Generation Scalable processors (code-named Ice Lake)
          --------------------------------------------------------

        Value:
          true
```
