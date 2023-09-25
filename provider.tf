provider "kubernetes" {
  config_context = "kind-kind"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"  # Replace with the path to your Kubernetes config
  }
}
