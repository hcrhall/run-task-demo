variable "region" {
  type        = string
  default     = "us-east-1"
  description = "The AWS region that the provider should use"
}

variable "environment" {
  type        = string
  default     = "production"
  description = "The name of the environment in which you would like to provision your infrastructure"
}

variable "db_username" {
  default     = "kai_monkey_user_ob6RGj"
  description = "Username for the master DB user"
}

variable "db_password" {
  default     = "kHJ!4dusp7A#Xf21URhhZ1#"
  description = "Password for the master DB user"
}

variable "default_tags" {
  default     = {}
  description = "Map of tags to assign to the resource"
}