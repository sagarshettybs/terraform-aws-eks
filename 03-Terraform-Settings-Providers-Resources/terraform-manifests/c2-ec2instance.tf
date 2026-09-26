#Resource : EC2 Instance    
resource "aws_instance" "ec2demo" {
  ami           = "ami-066c4849e6b3a1e3d" # Amazon Linux
  instance_type = "t3.micro"
  user_data     = file("${path.module}/app1-install.sh") # shell script to install Apache Web Server and create a sample index.html page
  tags = {
    Name = "MyEC2Instance"
  }
}