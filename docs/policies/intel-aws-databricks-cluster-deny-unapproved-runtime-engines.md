# databricks_cluster deny unapproved runtime engines (Optimize)

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
        Name        : intel-aws-databricks-cluster-deny-unapproved-runtime-engines.sentinel
        Category    : Platform (PaaS)
        Provider    : databricks/databricks
        Resource    : databricks_cluster
        Parameter   : runtime_engine
        Check       : runtime_engine contains

        PHOTON

        ========================================================================
        RESOURCE VIOLATIONS
        The configured databricks cluster should use the runtime engine PHOTON
        ========================================================================
         name       : dbx_cluster
         type       : databricks_cluster
         address    : module.databricks_cluster.databricks_cluster.dbx_cluster
         message    : notPHOTON is not an allowed runtime engine type.
        ------------------------------------------------------------------------
         Resources out of compliance: 1
        ------------------------------------------------------------------------

        Value:
          Fail
```
