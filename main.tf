#Create a VPC
resource "aws_instance" "dev" {
  count = 1
  ami = lookup(var.AWS_AMI, var.AWS_REGION)
  availability_zone = data.aws_availability_zones.available.names[0]
  instance_type = lookup(var.instance_type,var.env)
  tags = {
    Name = "dev${count.index}"
  }
  depends_on = [aws_s3_bucket.devbucket]
}