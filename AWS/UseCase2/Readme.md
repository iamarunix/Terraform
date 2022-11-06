# AWS EC2 creation with WebServer using Terraform script

## Step 1 - Login into the machine where you have installed Terraform
## Step 2 - Configure the AWS CLI using the user created in IAM
## Step 3 - Save below script in with .tf extention

```
provider "aws" {
        region = "us-east-1"                                      # Region
                       }
resource "aws_security_group" "sg_1" {                            # Firewall Rule                 
          name = "sg_1"

                  ingress {                                       # Inbound Rule
                           from_port = 22
                           to_port = 22
                           protocol= "tcp"
                           cidr_blocks = ["0.0.0.0/0"]
                                   }
                  ingress {
                           from_port = 80
                           to_port = 80
                           protocol= "tcp"
                           cidr_blocks = ["0.0.0.0/0"]
                                   }
                  ingress {
                           from_port = 443
                           to_port = 443
                           protocol= "tcp"
                           cidr_blocks = ["0.0.0.0/0"]
                                   }
                  egress {                                         # Outbound Rule
                           from_port = 0
                           to_port = 0
                           protocol= "-1"
                           cidr_blocks = ["0.0.0.0/0"]
                                   }
}
resource "aws_instance" "Webserver" {
          ami               = "ami-06640050dc3f556bb"                    # OS Name
          instance_type     =  "t2.micro"                                # Instance Type 
          availability_zone = "us-east-1d"                               # DataCenter
          security_groups   = ["${aws_security_group.sg_1.name}"]       
          user_data         = <<-EOF                                     # Shell script
                          #! /bin/bash
                          sudo yum install httpd -y
                          sudo systemctl start httpd
                          sudo systemctl enable httpd
                          echo "<h1> Sample webserver created in AWS EC2 using Terraform </h1>" > /var/www/html/index.html
                               EOF
				tags = {
                      Name = "Webserver"                                # EC2 Instance Name
                }
							   
							   
}

```
## Step 4 - Execute below command to compile the current folder for terraform  

$ init terraform

## Step 5 - Execute the terraform script to create AWS EC2 instance
$ terraform --apply 

## Step 6 - Verify it from AWS Console
