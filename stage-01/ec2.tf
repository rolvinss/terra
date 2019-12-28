variable "ami_id" {
    default = "ami-0f2b4fc905b0bd1f1"
}
resource "aws_instance" "web" {
  ami = var.ami_id
  instance_type = "t2.micro"
}
