# aws_redshift_cluster deny unapproved node types (Optimize)

| Provider            | Category                 |
|---------------------|--------------------------|
| aws                 | Infrastructure (IaaS)    |

## Description

Deploying the AWS Redshift clusters on Intel Xeon <BROADWELL_GENERATION> Generation Scalable processors (code-named Broadwell) provides a seamless performance foundation.

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
        Name        :intel-aws-redshift-cluster-deny-unapproved-node-types.sentinel
        Category    :Infrastructure (IaaS)
        Provider    :hashicorp/aws
        Resource    :aws_redshift_cluster
        Parameter   :node_type
        ========================================================================
        For a list of allowed parameter options see: <MD_URL_HERE>

        ========================================================================
        RESOURCE VIOLATIONS
        The configured server type should use an Intel Xeon <BROADWELL GENERATION> Generation Scalable processor (code-named Broadwell)
        ========================================================================
         name       : this
         type       : aws_redshift_cluster
         address    : module.default.aws_redshift_cluster.this[0]
         message    : NOTINTEL is not an allowed server type.
        ------------------------------------------------------------------------
         Resources out of compliance: 1
        ------------------------------------------------------------------------

        Value:
          Fail
```
