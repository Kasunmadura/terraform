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

### setup env variable to run terraform

    export TF_VAR_env=dev
    unset TF_VAR_env
