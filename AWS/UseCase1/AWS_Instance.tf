
provider "aws" {
        region = "us-east-1"
               }
resource "aws_instance" "Linux_Server"{
          ami               = "ami-06640050dc3f556bb"
          instance_type     = "t2.micro"
          availability_zone = "us-east-1d"		  
		    
		 tags = {
            Name = "Linux_Server"
                }
}

