resource "aws_instance" "this" {
  ami           = var.ami_ec2
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.ec2-sg.id]
  subnet_id = aws_subnet.subnet_pub.id
  key_name = var.ec2_key

  tags = merge({ Name = "${var.ec2_key}-test" }, var.tags)
}
