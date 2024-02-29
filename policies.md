<p align="center">
  <img src="./images/logo-classicblue-800px.png" alt="Intel Logo" width="250"/>
</p>

# Intel® Optimizated Cloud Modules for Terraform  

© Copyright 2024, Intel Corporation

## AWS Resources

This file documents the HashiCorp Sentinel policies that apply to this library

### AWS EMR Cluster

Description: The configured `instance_type` should be an Intel Xeon 3rd Generation(code-named Ice Lake) Scalable processors or an Intel Xeon 4th Generation(code-named Sapphire Rapids) Scalable processors.

Resource type: aws-emr-cluster

Parameter: instance_type

Allowed Types:

- **Primary, Core and Task Nodes** : C6i.xlarge, C6i.2xlarge, C6i.4xlarge, C6i.8xlarge, C6i.12xlarge, C6i.16xlarge, C6i.24xlarge, C6i.32xlarge, C6id.xlarge, C6id.2xlarge, C6id.4xlarge, C6id.8xlarge, C6id.12xlarge, C6id.16xlarge, C6id.24xlarge, C6id.32xlarge, C6in.xlarge, C6in.2xlarge, C6in.4xlarge, C6in.8xlarge, C6in.12xlarge, C6in.16xlarge, C6in.24xlarge, C6in.32xlarge, D3.xlarge, D3.2xlarge, D3.4xlarge, D3.8xlarge, I4i.xlarge, I4i.2xlarge,I4i.4xlarge, I4i.8xlarge, I4i.16xlarge, I4i.32xlarge, M6i.xlarge, M6i.2xlarge, M6i.4xlarge, M6i.8xlarge, M6i.12xlarge, M6i.16xlarge, M6i.24xlarge, M6i.32xlarge, M6id.xlarge, M6id.2xlarge, M6id.4xlarge, M6id.8xlarge, M6id.12xlarge, M6id.16xlarge, M6id.24xlarge, M6id.32xlarge, M6idn.xlarge, M6idn.2xlarge, M6idn.4xlarge, M6idn.8xlarge, M6idn.12xlarge, M6idn.16xlarge, M6idn.24xlarge, M6idn.32xlarge, M6in.xlarge, M6in.2xlarge,M6in.4xlarge, M6in.8xlarge, M6in.12xlarge, M6in.16xlarge, M6in.24xlarge, M6in.32xlarge, P3.2xlarge, P3.8xlarge, P3.16xlarge, R6i.xlarge, R6i.2xlarge, R6i.4xlarge, R6i.8xlarge, R6i.12xlarge, R6i.16xlarge, R6i.24xlarge, R6i.32xlarge, R6id.xlarge, R6id.2xlarge, R6id.4xlarge, R6id.8xlarge, R6id.12xlarge, R6id.16xlarge, R6id.24xlarge, R6id.32xlarge, R6idn.xlarge, R6idn.2xlarge, R6idn.4xlarge, R6idn.8xlarge, R6idn.12xlarge,R6idn.16xlarge, R6idn.24xlarge, R6idn.32xlarge, R6in.xlarge, R6in.2xlarge, R6in.4xlarge, R6in.8xlarge, R6in.12xlarge, R6in.16xlarge, R6in.24xlarge, R6in.32xlarge, X2idn.16xlarge, X2idn.24xlarge, X2idn.32xlarge, X2iedn.2xlarge, X2iedn.16xlarge, X2iedn.24xlarge, X2iedn.32xlarge

### AWS EMR Instance Fleet

Description: The configured `instance_type` should be an Intel Xeon 3rd Generation(code-named Ice Lake) Scalable processors or an Intel Xeon 4th Generation(code-named Sapphire Rapids) Scalable processors.

Resource type: aws-emr-instance-fleet

Parameter: instance_type

Allowed Types:

- **Primary, Core and Task Nodes** : C6i.xlarge, C6i.2xlarge, C6i.4xlarge, C6i.8xlarge, C6i.12xlarge, C6i.16xlarge, C6i.24xlarge, C6i.32xlarge, C6id.xlarge, C6id.2xlarge, C6id.4xlarge, C6id.8xlarge, C6id.12xlarge, C6id.16xlarge, C6id.24xlarge, C6id.32xlarge, C6in.xlarge, C6in.2xlarge, C6in.4xlarge, C6in.8xlarge, C6in.12xlarge, C6in.16xlarge, C6in.24xlarge, C6in.32xlarge, D3.xlarge, D3.2xlarge, D3.4xlarge, D3.8xlarge, I4i.xlarge, I4i.2xlarge, I4i.4xlarge, I4i.8xlarge, I4i.16xlarge, I4i.32xlarge, M6i.xlarge, M6i.2xlarge, M6i.4xlarge, M6i.8xlarge, M6i.12xlarge, M6i.16xlarge, M6i.24xlarge, M6i.32xlarge, M6id.xlarge, M6id.2xlarge, M6id.4xlarge, M6id.8xlarge, M6id.12xlarge, M6id.16xlarge, M6id.24xlarge, M6id.32xlarge, M6idn.xlarge, M6idn.2xlarge, M6idn.4xlarge, M6idn.8xlarge, M6idn.12xlarge, M6idn.16xlarge, M6idn.24xlarge, M6idn.32xlarge, M6in.xlarge, M6in.2xlarge, M6in.4xlarge, M6in.8xlarge, M6in.12xlarge, M6in.16xlarge, M6in.24xlarge, M6in.32xlarge, P3.2xlarge, P3.8xlarge, P3.16xlarge, R6i.xlarge, R6i.2xlarge, R6i.4xlarge, R6i.8xlarge, R6i.12xlarge, R6i.16xlarge, R6i.24xlarge, R6i.32xlarge, R6id.xlarge, R6id.2xlarge, R6id.4xlarge, R6id.8xlarge, R6id.12xlarge, R6id.16xlarge, R6id.24xlarge, R6id.32xlarge, R6idn.xlarge, R6idn.2xlarge, R6idn.4xlarge, R6idn.8xlarge, R6idn.12xlarge,R6idn.16xlarge, R6idn.24xlarge, R6idn.32xlarge, R6in.xlarge, R6in.2xlarge, R6in.4xlarge, R6in.8xlarge, R6in.12xlarge, R6in.16xlarge, R6in.24xlarge, R6in.32xlarge, X2idn.16xlarge, X2idn.24xlarge, X2idn.32xlarge, X2iedn.2xlarge, X2iedn.16xlarge, X2iedn.24xlarge, X2iedn.32xlarge

### AWS RDS Cluster

Description: The configured `db_cluster_instance_class` should be an Intel Xeon 3rd Generation(code-named Ice Lake) Scalable processors or an Intel Xeon 4th Generation(code-named Sapphire Rapids) Scalable processors.

Resource type: azurerm-hdinsight-hbase-cluster

Parameter: db_cluster_instance_class

Allowed Types:

- **Amazon Aurora MariaDB** : Db.m6i.large, Db.m6i.xlarge, Db.m6i.2xlarge, Db.m6i.4xlarge, Db.m6i.xlarge, Db.m6i.8xlarge, Db.m6i.12xlarge, Db.m6i.16xlarge, Db.m6i.24xlarge, Db.m6i.32xlarge, Db.m6id.large, Db.m6id.xlarge, Db.m6id.2xlarge, Db.m6id.4xlarge, Db.m6id.xlarge, Db.m6id.8xlarge, Db.m6id.12xlarge, Db.m6id.16xlarge, Db.m6id.24xlarge, Db.m6id.32xlarge, Db.m6in.large, Db.m6in.xlarge, Db.m6in.2xlarge, Db.m6in.4xlarge, Db.m6in.xlarge, Db.m6in.8xlarge, Db.m6in.12xlarge, Db.m6in.16xlarge, Db.m6in.24xlarge, Db.m6in.32xlarge, Db.m6idn.large, Db.m6idn.xlarge, Db.m6idn.2xlarge, Db.m6idn.4xlarge, Db.m6idn.xlarge, Db.m6idn.8xlarge, Db.m6idn.12xlarge, Db.m6idn.16xlarge, Db.m6idn.24xlarge, Db.m6idn.32xlarge, Db.r6i.large, Db.r6i.xlarge, Db.r6i.2xlarge, Db.r6i.4xlarge, Db.r6i.8xlarge, Db.r6i.12xlarge, Db.r6i.16xlarge, Db.r6i.24xlarge, Db.r6i.32xlarge, Db.r6id.large, Db.r6id.xlarge, Db.r6id.2xlarge, Db.r6id.4xlarge, Db.r6id.xlarge, Db.r6id.8xlarge, Db.r6id.12xlarge, Db.r6id.16xlarge, Db.r6id.24xlarge, Db.r6id.32xlarge, Db.r6in.large, Db.r6in.xlarge, Db.r6in.2xlarge, Db.r6in.4xlarge, Db.r6in.8xlarge, Db.r6in.12xlarge, Db.r6in.16xlarge, Db.r6in.24xlarge, Db.r6in.32xlarge, Db.r6idn.large, Db.r6idn.xlarge, Db.r6idn.2xlarge, Db.r6idn.4xlarge, Db.r6idn.8xlarge, Db.r6idn.12xlarge, Db.r6idn.16xlarge, Db.r6idn.24xlarge, Db.r6idn.32xlarge, Db.t3.micro, Db.t3.small, Db.t3.medium, Db.t3.large, Db.t3.xlarge, Db.t3.2xlarge

- **Amazon Aurora Microsoft SQL Server** : Db.m6i.large, Db.m6i.xlarge, Db.m6i.2xlarge, Db.m6i.4xlarge, Db.m6i.xlarge, Db.m6i.8xlarge, Db.m6i.12xlarge, Db.m6i.16xlarge, Db.m6i.24xlarge, Db.m6i.32xlarge, Db.r6i.large, Db.r6i.xlarge, Db.r6i.2xlarge, Db.r6i.4xlarge, Db.r6i.8xlarge, Db.r6i.12xlarge, Db.r6i.16xlarge, Db.r6i.24xlarge, Db.r6i.32xlarge, X2iedn.2xlarge, X2iedn.16xlarge, X2iedn.24xlarge, X2iedn.32xlarge, Db.t3.xlarge, Db.t3.2xlarge

- **Amazon Aurora MySQL** : Db.m6id.large, Db.m6id.xlarge, Db.m6id.2xlarge, Db.m6id.4xlarge, Db.m6id.8xlarge, Db.m6id.12xlarge, Db.m6id.16xlarge, Db.m6id.24xlarge, Db.m6id.32xlarge, Db.m6idn.large, Db.m6idn.xlarge, Db.m6idn.2xlarge, Db.m6idn.4xlarge, Db.m6idn.8xlarge, Db.m6idn.12xlarge, Db.m6idn.16xlarge, Db.m6idn.24xlarge, Db.m6idn.32xlarge, Db.r6id.large, Db.r6id.xlarge, Db.r6id.2xlarge, Db.r6id.4xlarge, Db.r6id.8xlarge, Db.r6id.12xlarge, Db.r6id.16xlarge, Db.r6id.24xlarge, Db.r6id.32xlarge, Db.r6idn.large, Db.r6idn.xlarge, Db.r6idn.2xlarge, Db.r6idn.4xlarge, Db.r6idn.8xlarge, Db.r6idn.12xlarge, Db.r6idn.16xlarge, Db.r6idn.24xlarge, Db.r6idn.32xlarge, Db.m6i.large, Db.r6idn.xlarge, Db.r6idn.2xlarge, Db.r6idn.4xlarge, Db.r6idn.8xlarge, Db.r6idn.12xlarge, Db.r6idn.16xlarge, Db.r6idn.24xlarge, Db.r6idn.32xlarge, Db.m6id.large, Db.m6id.xlarge, Db.m6id.2xlarge, Db.m6id.4xlarge, Db.m6id.8xlarge, Db.m6id.16xlarge, Db.m6id.24xlarge, Db.m6id.32xlarge, Db.m6in.large, Db.m6in.xlarge, Db.m6in.2xlarge, Db.m6in.4xlarge, Db.m6in.8xlarge, Db.m6in.12xlarge, Db.m6in.16xlarge, Db.m6in.24xlarge, Db.m6in.32xlarge, Db.m6idn.large, Db.m6idn.xlarge, Db.m6idn.2xlarge, Db.m6idn.4xlarge, Db.m6idn.8xlarge, Db.m6idn.12xlarge, Db.m6idn.16xlarge, Db.m6idn.24xlarge, Db.m6idn.32xlarge, Db.r6i.large, Db.r6i.xlarge, Db.r6i.2xlarge, Db.r6i.4xlarge, Db.r6i.8xlarge, Db.r6i.12xlarge, Db.r6i.16xlarge, Db.r6i.24xlarge, Db.r6i.32xlarge, Db.r6id.large, Db.r6id.xlarge, Db.r6id.2xlarge, Db.r6id.4xlarge, Db.r6id.8xlarge, Db.r6id.12xlarge, Db.r6id.16xlarge, Db.r6id.24xlarge, Db.r6id.32xlarge, Db.r6in.large, Db.r6in.xlarge, Db.r6in.2xlarge, Db.r6in.4xlarge, Db.r6in.8xlarge, Db.r6in.12xlarge, Db.r6in.16xlarge, Db.r6in.24xlarge, Db.r6in.32xlarge, Db.r6idn.large, Db.r6idn.xlarge, Db.r6idn.2xlarge, Db.r6idn.4xlarge, Db.r6idn.8xlarge, Db.r6idn.12xlarge, Db.r6idn.16xlarge, Db.r6idn.24xlarge, Db.r6idn.32xlarge, Db.t3.micro, Db.t3.small, Db.t3.medium, Db.t3.large, Db.t3.xlarge, Db.t3.2xlarge

- **Amazon Aurora MySQL-Compatible Edition** : Db.r6i.large, Db.r6i.xlarge, Db.r6i.2xlarge, Db.r6i.4xlarge, Db.r6i.8xlarge, Db.r6i.12xlarge, Db.r6i.16xlarge, Db.r6i.24xlarge, Db.r6i.32xlarge, Db.t3.medium, Db.t3.large

- **Amazon Aurora PostgreSQL** : Db.m6id.large, Db.m6id.xlarge, Db.m6id.2xlarge, Db.m6id.4xlarge, Db.m6id.8xlarge, Db.m6id.12xlarge, Db.m6id.16xlarge, Db.m6id.24xlarge, Db.m6id.32xlarge, Db.m6idn.large, Db.m6idn.xlarge, Db.m6idn.2xlarge, Db.m6idn.4xlarge, Db.m6idn.8xlarge, Db.m6idn.12xlarge, Db.m6idn.16xlarge, Db.m6idn.24xlarge, Db.m6idn.32xlarge, Db.r6id.large, Db.r6id.xlarge, Db.r6id.2xlarge, Db.r6id.4xlarge, Db.r6id.8xlarge, Db.r6id.12xlarge, Db.r6id.16xlarge, Db.r6id.24xlarge, Db.r6id.32xlarge, Db.r6idn.large, Db.r6idn.xlarge, Db.r6idn.2xlarge, Db.r6idn.4xlarge, Db.r6idn.8xlarge, Db.r6idn.12xlarge, Db.r6idn.16xlarge, Db.r6idn.24xlarge, Db.r6idn.32xlarge, Db.t3.micro, Db.t3.small, Db.t3.medium, Db.t3.large, Db.t3.xlarge, Db.t3.2xlarge, Db.m6i.large, Db.m6i.xlarge, Db.m6i.2xlarge, Db.m6i.4xlarge, Db.m6i.8xlarge, Db.m6i.12xlarge, Db.m6i.16xlarge, Db.m6i.24xlarge, Db.m6i.32xlarge, Db.m6in.large, Db.m6in.xlarge, Db.m6in.2xlarge, Db.m6in.4xlarge, Db.m6in.8xlarge, Db.m6in.12xlarge, Db.m6in.16xlarge, Db.m6in.24xlarge, Db.m6in.32xlarge, Db.r6i.large, Db.r6i.xlarge, Db.r6i.2xlarge, Db.r6i.4xlarge, Db.r6i.8xlarge, Db.r6i.12xlarge, Db.r6i.16xlarge, Db.r6i.24xlarge, Db.r6i.32xlarge, Db.t3.medium, Db.t3.large

- **Amazon Aurora PostgreSQL-Compatible Edition** : Db.r6i.large, Db.r6i.xlarge, Db.r6i.2xlarge, Db.r6i.4xlarge, Db.r6i.8xlarge, Db.r6i.12xlarge, Db.r6i.16xlarge, Db.r6i.24xlarge, Db.r6i.32xlarge, Db.t3.medium, Db.t3.large

- **Amazon Aurora Oracle** : Db.m6i.large, Db.m6i.xlarge, Db.m6i.2xlarge, Db.m6i.4xlarge, Db.m6i.8xlarge, Db.m6i.12xlarge, Db.m6i.16xlarge, Db.m6i.24xlarge, Db.m6i.32xlarge, Db.r6i.large, Db.r6i.xlarge, Db.r6i.2xlarge, Db.r6i.4xlarge, Db.r6i.8xlarge, Db.r6i.12xlarge, Db.r6i.16xlarge, Db.r6i.24xlarge, Db.r6i.32xlarge, X2idn.16xlarge, X2idn.24xlarge, X2idn.32xlarge, X2iedn.2xlarge, X2iedn.16xlarge, X2iedn.24xlarge, X2iedn.32xlarge, Db.t3.micro, Db.t3.small, Db.t3.medium, Db.t3.large, Db.t3.xlarge, Db.t3.2xlarge
