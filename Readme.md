## Introduction to Terraform

1. Allow simple version control
2. Support many servers providers (AWS,openstack,GCP..etc)
3. Idempotent and high level syntax
4. Easily Reuse
5. Execution plan
6. Resource Graphs
7. Support for multi-tier Infrastructure


### Installation

#### for Ubuntu

    To install Terraform 0.11.5:
    sudo curl -O https://releases.hashicorp.com/terraform/0.11.5/terraform_0.11.5_linux_amd64.zip
    sudo apt-get install unzip
    sudo mkdir /bin/terraform
    sudo unzip terraform_0.11.5_linux_amd64.zip -d /usr/local/bin/  


#### Mac

    brew update
    brew install terraform



### Terraform Module structure

Up to this point, we've been configuring Terraform by editing Terraform configurations directly. As our infrastructure grows, this practice has a few key problems: a lack of organization, a lack of reusability, and difficulties in management for teams.

Modules in Terraform are self-contained packages of Terraform configurations that are managed as a group. Modules are used to create reusable components, improve organization, and to treat pieces of infrastructure as a black box.

![terraform moudules structure ](https://github.com/Kasunmadura/terraform/blob/master/images/modules.png)


### Terraform workspaces

Each Terraform configuration has an associated backend that defines how operations are executed and where persistent data such as the Terraform state are stored.

The persistent data stored in the backend belongs to a workspace. Initially the backend has only one workspace, called "default", and thus there is only one Terraform state associated with that configuration.

Certain backends support multiple named workspaces, allowing multiple states to be associated with a single configuration. The configuration is still has only one backend, but multiple distinct instances of that configuration to be deployed without configuring a new backend or changing authentication credentials.


    terraform workspace new dev
    terraform workspace new prod
    terraform workspace new staging

    terraform workspace select dev
    terraform workspace select default
