variable "app_name" {
  description = "Name of the application"
  type        = string
}

variable "instance_count" {
  description = "Number of fake instances"
  type        = number
  default     = 1
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}
