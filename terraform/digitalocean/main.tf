resource "digitalocean_kubernetes_cluster" "k8s" {
  name    = "prod-cluster"
  region  = "fra1"
  version = "1.31.1-do.4"

  node_pool {
    name       = "autoscale-worker-pool"
    size       = "s-2vcpu-2gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 3
  }
}

# Экспортируем конфиг для kubectl
output "kube_config" {
  value     = digitalocean_kubernetes_cluster.k8s.kube_config.0.raw_config
  sensitive = true
}
