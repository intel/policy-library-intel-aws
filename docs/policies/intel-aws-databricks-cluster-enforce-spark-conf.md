# aws_databricks_cluster enforce spark_conf (Optimize)

| Provider            | Category                 |
|---------------------|--------------------------|
| databricks          | Platform (PaaS)          |

## Description

Server performance is one of the most important components for enterprise applications experience. Deploying Databricks clusters on Intel Xeon 3rd Generation Scalable processors (code-named Ice Lake) provides a seamless performance foundation.

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
        Name        : intel-aws-databricks-cluster-enforce-spark-conf.sentinel
        Category    : Platform (PaaS)
        Provider    : databricks/databricks
        Resource    : databricks_cluster
        Parameter   : spark_conf
        Check       : spark_conf is not null


        ========================================================================
        RESOURCE VIOLATIONS
        The configured databricks cluster should use optimization scripts
        ========================================================================
         name       : dbx_cluster
         type       : databricks_cluster
         address    : module.databricks_cluster.databricks_cluster.dbx_cluster
         message    : dbx_cluster has no optimization scripts.
        ------------------------------------------------------------------------
         Resources out of compliance: 1
        ------------------------------------------------------------------------

        Value:
          Fail
```
