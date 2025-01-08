resource "aws_instance" "new_instance" {
    ami = "ami-0166e89d589bb1b2f"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.subnet1.id
    vpc_security_group_ids = [aws_security_group.security_group.id]

    tags = {
      Name = "Server-1"
    }
}