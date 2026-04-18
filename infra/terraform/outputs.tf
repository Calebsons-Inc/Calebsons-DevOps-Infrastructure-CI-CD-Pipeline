output "container_host_manifest_path" {
  description = "Path to the generated container host manifest."
  value       = local_file.container_host_manifest.filename
}

output "deployment_environment_file" {
  description = "Path to the generated deployment environment file."
  value       = local_file.deployment_environment.filename
}

output "deployed_image" {
  description = "Container image referenced by the deployment artifacts."
  value       = var.image_name
}
