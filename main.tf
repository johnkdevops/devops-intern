terraform {
  required_version = ">= 0.13"

  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }
}

resource "kubectl_manifest" "express-node-js-app" {
  yaml_body = file("hello-world-nodejs-deploy.yaml")
}

