terraform {
  	backend "kubernetes" {
    		secret_suffix = "state"
    		config_path   = "~/.kube/config"
		namespace         = "demo1"
		insecure          = true
  	}
  	required_providers {
    		kubectl = {
      			source  = "gavinbunney/kubectl"
      			version = ">= 1.19.0"
    		}
  	}
}

provider "kubectl" {
  	config_path    = "~/.kube/config"
  	config_context = "demo1"
  	insecure       = true
}
