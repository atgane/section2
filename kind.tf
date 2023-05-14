resource "kind_cluster" "default" {
  name           = "myapp"
  wait_for_ready = true
  

  kind_config {
    kind        = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
      role  = "control-plane"

      extra_port_mappings {
        container_port = 30500
        host_port      = 5000
      }

      extra_port_mappings {
        container_port = 30080
        host_port      = 30080
      }

      extra_port_mappings {
        container_port = 30443
        host_port      = 30443
      }
    }

    node {
      role = "worker"
    }
    
    node {
      role = "worker"
    }
  }
}