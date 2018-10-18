#------ compute/variables.tf_auth---

variable "key_name" {
    default ="tf_key"
}

variable "public_key_path"{
    default = "/home/ec2-user/.ssh/id_rsa.pub"
}