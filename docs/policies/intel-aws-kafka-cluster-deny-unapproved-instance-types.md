# aws_msk_cluster deny unapproved instance types (Optimize)

| Provider            | Category                 |
|---------------------|--------------------------|
| aws                 | Infrastructure (IaaS)    |

## Description

Deploying the AWS Kafka clusters on Intel Xeon 3rd Generation Scalable processors (code-named Ice Lake) provides a seamless performance foundation.

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
        Name        :intel-aws-kafka-cluster-deny-unapproved-instance-types.sentinel
        Category    :Infrastructure (IaaS)
        Provider    :hashicorp/aws
        Resource    :aws_msk_cluster
        Parameter   :instance_type
        ========================================================================
        For a list of allowed parameter options see: <MD_URL_HERE>

        ========================================================================
        RESOURCE VIOLATIONS
        The configured server type should use an Intel Xeon 3rd Generation Scalable processor (code-named Ice Lake)
        ========================================================================
         name       : this
         type       : aws_msk_cluster
         address    : module.msk_cluster.aws_msk_cluster.this[0]
         message    : this uses a disallowed server type.
        ------------------------------------------------------------------------
         Resources out of compliance: 1
        ------------------------------------------------------------------------

        Value:
          Fail
```
