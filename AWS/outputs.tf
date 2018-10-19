#### root outputs 

output "Bucket_name"{
    value = "${module.storage.bucketname}"
}


### --Networking outputs ---

output "Public Subnets"{
    value= "${join(", ", module.networking.public_subnets)}"
}

output "Subnet IPs" {
  value = "${join(", ", module.networking.subnet_ips)}"
}

output "public sg " {
    value = "${module.networking.public_sg}"
}

### -- Compute outputs 

output "Public instace iDs" {
    value  = "${module.compute.server_id}"
}

output "Public instace ips" {
    value  = "${module.compute.server_ip}"
}