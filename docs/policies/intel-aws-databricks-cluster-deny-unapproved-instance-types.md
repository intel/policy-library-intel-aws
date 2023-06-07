# databricks_cluster deny unapproved instance types (Optimize)

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
        Name        :intel-aws-databricks-cluster-deny-unapproved-instance-types.sentinel
        Category    :Platform (PaaS)
        Provider    :databricks/databricks
        Resource    :databricks_cluster
        Parameter   :node_type_id
        Check       :node_type_id contains

        For a list of allowed instance types see:
        https://github.com/intel/terraform-intel-aws-databricks/blob/main/policies.md

        ========================================================================
        RESOURCE VIOLATIONS
        The configured server type should use an Intel Xeon 3rd Generation Scalable processor (code-named Ice Lake)
        ========================================================================
         name       :dbx_cluster
         type       :databricks_cluster
         address    :module.databricks_cluster.databricks_cluster.dbx_cluster
         message    :noti4i.2xlarge is not an allowed server type.
        ------------------------------------------------------------------------
         Resources out of compliance: 1
        ------------------------------------------------------------------------

        Value:
          Fail
```
