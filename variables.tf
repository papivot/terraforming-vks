variable "cluster_name" {
  	default = "workload-vsphere-tkg3"
}

variable "namespace" {
  	default = "demo1"
}

variable "k8s_version" {
    	default = "v1.31.4---vmware.1-fips-vkr.3"
}

variable "cluster_class" {
	default = "builtin-generic-v3.1.0"
}

variable "control_plane_replicas" {
	default = 1
}

variable "ntp_server" {
	default = "ntp.broadcom.com"
}

variable "base_vm_class" {
	default = "best-effort-medium"
}

variable "base_storage_class" {
	default = "tanzu"
}

variable "default_storage_class" {
	default = "tanzu"
}