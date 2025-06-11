variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}

variable "my_ip" {
  description = "Your public IP with /32"
  type        = string
}
