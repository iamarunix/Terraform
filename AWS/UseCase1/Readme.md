# UseCase1 - AWS EC2 creation using Terraform script
![Watch the image](aws_terraform.JPG)


### Takeaway from this usecase:
> Let's create an EC2 instance using the below script in a matter of seconds rather than using the AWS GUI and wasting 4-5 minutes by choosing various options. 
 ### Note: 
- If you have not installed Terraform, please follow the steps from here [Terraform installation in Linux](https://github.com/arunixx/terraform/blob/master/Terraform_Installation_Linux.md)
- If you have not configure AWS CLI, please follow the steps from here [AWS CLI Configuration in Linux](https://github.com/arunixx/terraform/blob/master/Terraform_Installation_Linux.md)
### Hint:
> You can modify this script template and use it for a various usecases 

## Step 1 - Login into the machine where Terraform and AWSCLI is installed 
## Step 2 - Check whether AWS CLI is configured
## Step 3 - Save below script in with .tf extention

```
provider "aws" {
        region = "us-east-1"
               }
resource "aws_instance" "Linux_Server"{
          ami               = "ami-06640050dc3f556bb"  # AMI ID for RHEL OS
          instance_type     = "t2.micro"               # Instance Type 
          availability_zone = "us-east-1d"	       # Datacenter 	  
		    
             tags = {
                       Name = "RedHat_Linux_Server"    # Instance Name
                    }
}
```
## Step 4 - Execute below command to compile the current folder for terraform  

$ terraform init 

## Step 5 - Execute the terraform script to create AWS EC2 instance
$ terraform apply 

## Step 6 - Verify it from AWS Console
