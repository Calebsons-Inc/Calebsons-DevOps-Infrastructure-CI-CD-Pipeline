terraform {
  required_version = ">= 1.6.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

locals {
  container_host = {
    name        = "${var.app_name}-${var.environment}"
    runtime     = "docker"
    image       = var.image_name
    container   = "${var.app_name}-${var.environment}"
    port        = var.container_port
    host_port   = var.host_port
    environment = var.environment
    created_by  = "terraform"
  }
}

resource "local_file" "container_host_manifest" {
  filename = "${path.module}/container-host.json"
  content  = jsonencode(local.container_host)
}

resource "local_file" "deployment_environment" {
  filename = "${path.module}/deployment.env"
  content  = join("\n", [
    "APP_NAME=${var.app_name}",
    "IMAGE_NAME=${var.image_name}",
    "CONTAINER_PORT=${var.container_port}",
    "HOST_PORT=${var.host_port}",
    "ENVIRONMENT=${var.environment}"
  ])
}
