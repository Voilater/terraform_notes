# Configure the AWS provider
provider "aws" {
  region                  = "ap-south-1"  # Change this to your desired AWS region
  shared_credentials_files = ["/root/.aws/credentials" ] # Specify the path to your shared credentials file
}


resource "aws_instance" "test-tf" {
  ami           = "ami-09298640a92b2d12c"
  instance_type = "t2.micro"
  key_name      = "vignesh"  # Update this with the correct key pair name
  tags = {
    Name = "terraform"  # Set your instance name here
  }
}
