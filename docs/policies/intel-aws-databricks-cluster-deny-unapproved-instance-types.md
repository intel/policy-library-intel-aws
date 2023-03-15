# Ensure databricks_cluster use only Intel optimized instance types (codename Ice Lake)

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
        Name        : intel-aws-databricks-cluster-deny-unapproved-instance-types.sentinel
        Category    : Platform (PaaS)
        Provider    : databricks/databricks
        Resource    : databricks_cluster
        Parameter   : node_type_id
        Check       : node_type_id contains

        Storage Optimized:
                     i4i.large, i4i.xlarge,
                     i4i.2xlarge, i4i.4xlarge,
                     i4i.8xlarge, i4i.16xlarge,
                     i4i.32xlarge,

        ========================================================================
        RESOURCE VIOLATIONS
        The configured server type should use an Intel Xeon 3rd Generation Scalable processor (code-named Ice Lake)
        ========================================================================
         name       : dbx_cluster
         type       : databricks_cluster
         address    : module.databricks_cluster.databricks_cluster.dbx_cluster
         message    : noti4i.2xlarge is not an allowed server type.
        ------------------------------------------------------------------------
         Resources out of compliance: 1
        ------------------------------------------------------------------------

        Value:
          Fail
```
