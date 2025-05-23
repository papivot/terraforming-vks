# Deploying VKS clusters using Terraform/OpenTofu.

This Terraform configuration deploys a VMware Kubernetes Service (VKS) cluster by applying a manifest to a management cluster.

## Prerequisites

Before applying this Terraform configuration, ensure the following:

1.  **`kubectl` Configuration:** Your `kubectl` command-line tool must be configured to point to the Supervisor's vSphere Namespace where the VKS cluster (Workload Cluster) will be deployed.
2.  **`cluster_class` Configuration:** The necessary version of the cluster_class is is present in the Supervisor.

## Variables

The following variables are defined in `variables.tf` and can be customized:

| Variable Name             | Default Value                       | Description                                                                 |
| ------------------------- | ----------------------------------- | --------------------------------------------------------------------------- |
| `cluster_name`            | `workload-vsphere-tkg3`             | The name of the VKS cluster to be deployed.                                 |
| `namespace`               | `demo1`                             | The namespace in the management cluster where the VKS cluster will be created. |
| `k8s_version`             | `v1.31.4---vmware.1-fips-vkr.3`     | The Kubernetes version for the VKS cluster.                                   |
| `cluster_class`           | `builtin-generic-v3.1.0`            | The `ClassyCluster` class to be used for deploying the cluster.             |
| `control_plane_replicas`  | `1`                                 | The number of control plane replicas for the VKS cluster.                   |
| `ntp.server`              | `ntp.broadcom.com`                  | The NTP server to be configured for the cluster nodes.                        |
| `base_vm_class`           | `best-effort-medium`                | The VM class for the cluster nodes.                                         |
| `base_storage_class`      | `tanzu`                             | The storage class for the cluster's base persistent volumes.       |
| `default_storage_class`   | `tanzu`                             | The default storage class for persistent volume claims within the VKS cluster. |

## Usage

To deploy a VKS cluster using this Terraform configuration:

1.  **Initialize Terraform:**
    ```bash
    terraform init
    ```
2.  **Review and Apply:**
    Review the plan to understand the resources that will be created.
    ```bash
    terraform plan
    ```
    Apply the configuration to create the cluster.
    ```bash
    terraform apply
    ```
    You might be prompted to confirm the action by typing `yes`.

3.  **Destroy (Optional):**
    If you need to remove the cluster, you can use:
    ```bash
    terraform destroy
    ```
