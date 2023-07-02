variable "region" {
  default     = "us-east-1"
  description = "The AWS region that the provider should use"
}

variable "environment" {
  default = "production"
  description = "The name of the environment in which you would like to provision your infrastructure"
}