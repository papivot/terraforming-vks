resource "kubectl_manifest" "cluster" {
	yaml_body = templatefile("${path.module}/classycluster.yaml.tmpl", {
	cluster_name		        = var.cluster_name
  	namespace		        = var.namespace
  	k8s_version		        = var.k8s_version
	cluster_class		        = var.cluster_class
	control_plane_replicas 		= var.control_plane_replicas
	ntp_server			= var.ntp_server
	base_vm_class			= var.base_vm_class
	base_storage_class		= var.base_storage_class
	default_storage_class		= var.default_storage_class
	})
}
