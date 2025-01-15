resource "aws_instance" "new_instance" {
    ami = var.new_ami_id
    instance_type = var.my_instance_type
    subnet_id = aws_subnet.subnet1.id
    vpc_security_group_ids = [aws_security_group.security_group.id]

    count = 3
    tags = {
      Name = "Server $(count.index)"
    }
}