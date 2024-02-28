# aws-rds-cluster deny unapproved instance types (Optimize)

| Provider            | Category                 |
|---------------------|--------------------------|
| aws                 | Infrastructure (IaaS)    |

## Description

Server performance is one of the most important components for enterprise applications experience. Deploying the aws-emr-cluster on Intel Xeon 4th Generation Scalable processors (code-named Sapphire Rapids) provides a seamless performant and secure foundation for cloud workloads.

This Sentinel policy checks that the instances are configured with the recommended instance types to deliver optimal cost and performance for your business criticial servers.

## Policy Results (Fail)

```bash
    trace:
        Description:
    logs:
        ========================================================================
                            _       _       _
                           (_)     | |     | |
                            _ _ __ | |_ ___| |
                           | | '_ \| __/ _ \ |
                           | | | | | ||  __/ |
                           |_|_| |_|\__\___|_|

        ========================================================================
        Name        :intel-aws-aws-rds-cluster-deny-unapproved-instance-types.sentinel
        Category    :Infrastructure (IaaS)
        Provider    :hashicorp/aws
        Resource    :aws_rds_cluster
        Parameter   :db_cluster_instance_class
        ========================================================================
        For a list of allowed parameter options see:
        https://github.com/intel/policy-library-intel-aws/blob/main/policies/policies.md

        ========================================================================
        RESOURCE VIOLATIONS
        The configured server type should use an Intel Xeon 3rd Generation Scalable processor (code-named Ice Lake)
        ========================================================================
         name       : default
         type       : aws_rds_cluster
         address    : aws_rds_cluster.default
         message    : default uses a non-approved instance class
        ------------------------------------------------------------------------
         Resources out of compliance: 1
        ------------------------------------------------------------------------
```





