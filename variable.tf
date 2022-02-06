#variables
variable "ports" {
  type = list(number)
}

variable "image_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "access_key" {
  type = string
}
variable "secret_key" {
  type = string
}
variable  "count_instance"{
  type = number
  description = "EC2 instance count"
  
}

variable "user_names" {
  description = "IAM-users"
  type = list(string)
}
locals  {
  staging_env ="staging"

}
  
