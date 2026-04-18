variable "app_name" {
  description = "Application name used for deployment artifacts."
  type        = string
  default     = "calebsons-devops-infra-ci-cd-pipeline"
}

variable "image_name" {
  description = "Container image that should be deployed."
  type        = string
  default     = "devops-test"
}

variable "container_port" {
  description = "Port exposed by the containerized application."
  type        = number
  default     = 8000
}

variable "host_port" {
  description = "Port exposed on the target host."
  type        = number
  default     = 8000
}

variable "environment" {
  description = "Deployment environment name."
  type        = string
  default     = "local"
}
