# Terraform installation in Redhat Linux


## Step 1: Get to know your OS version
```
$ uname -r
4.18.0-372.9.1.el8.x86_64
```
## Step 2: Install the packages wget and unzip
```
$ sudo yum install wget unzip -y
```
## Step 3: Download the Terraform package from Hashicorp website
```
$ wget https://releases.hashicorp.com/terraform/1.3.2/terraform_1.3.2_linux_amd64.zip
```
## Step 4: Extract the folder from the zip file
```
$ unzip terraform_1.3.2_linux_amd64.zip 
```
## Step 5: Move the "terraform" folder to executable directory "/usr/bin"
```
$ mv terraform /usr/bin
```
## Step 6: Now, check the version of Terraform tool
```
$ terraform --version
```
## Step 7: Just list down all the Terraform commands.
```
$ terraform --help
```

Happy to receive any feedbacks :)
