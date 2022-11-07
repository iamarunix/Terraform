# AWS EC2 creation using Terraform script

### Takeaway from this usecase:
> Let's create an EC2 instance using the below script in a matter of seconds rather than using the AWS GUI and wasting 4-5 minutes by choosing various options. 

## Step 1 - Login into the machine where you have installed Terraform
## Step 2 - Configure the AWS CLI using the user created in IAM
## Step 3 - Save below script in with .tf extention

```
provider "aws" {
        region = "us-east-1"
               }
resource "aws_instance" "Linux_Server"{
          ami               = "ami-06640050dc3f556bb"  # OS Name
          instance_type     = "t2.micro"               # Instance Type 
          availability_zone = "us-east-1d"	       # Datacenter 	  
		    
		 tags = {
            Name = "Linux_Server"                      # Instance Name
                }
}
```
## Step 4 - Execute below command to compile the current folder for terraform  

$ init terraform

## Step 5 - Execute the terraform script to create AWS EC2 instance
$ terraform --apply 

## Step 6 - Verify it from AWS Console
