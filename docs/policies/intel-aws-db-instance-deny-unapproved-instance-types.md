# aws_db_instance deny unapproved instance types (Optimize)

| Provider            | Category                 |
|---------------------|--------------------------|
| aws                 | Infrastructure (IaaS)    |

## Description

Database performance is one of the most important components for enterprise applications experience. Deploying the Amazon Relational Database Service (RDS) instances on Intel Xeon 3rd Generation Scalable processors (code-named Ice Lake) provides a seamless performance foundation.

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
        Name        :intel-aws-db-instance-deny-unapproved-instance-types.sentinel
        Category    :Infrastructure (IaaS)
        Provider    :hashicorp/aws
        Resource    :aws_db_instance
        Parameter   :instance_class
        Check       :instance_class contains

        For a list of allowed instance types see:
        https://github.com/intel/terraform-intel-aws-mysql/blob/main/policies.md
        https://github.com/intel/terraform-intel-aws-postgresql/blob/main/policies.md
        https://github.com/intel/terraform-intel-aws-mssql/blob/main/policies.md
        https://github.com/intel/terraform-intel-aws-mariadb/blob/main/policies.md

        ========================================================================
        RESOURCE VIOLATIONS
        The configured server type should use an Intel Xeon 3rd Generation Scalable processor (code-named Ice Lake)
        ========================================================================
         name       :rds
         type       :aws_db_instance
         address    :module.intel-aws-deny-unapproved-instance-types-aws-db-instance.aws_db_instance.rds
         message    :db.m6.large is not an allowed server type.
        ------------------------------------------------------------------------
         Resources out of compliance: 1
        ------------------------------------------------------------------------

        Value:
          Fail
```
