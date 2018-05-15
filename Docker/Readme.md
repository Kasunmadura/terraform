### Deploy docker using terrafrom

    terraform init
    terraform plan
    terraform apply
    terraform show

taint and untaint moudule

    terraform taint docker_container.container_id
    terraform init
    terraform untaint docker_container.container_id


destroy terraform template

    terraform destroy


### Terraform Module structure

![terraform moudules structure ](https://github.com/Kasunmadura/terraform/blob/master/images/modules.png)
