# Create EC2-Instance
resource "aws_instance" "web" {
  ami                    = var.image_id
  instance_type          = var.instance_type
  count = var.count_instance
 # vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]


  tags = {
    Name = "${local.staging_env}-ec2-tag"
  }
}
resource "aws_iam_user" "demo-user" {
count = length(var.user_names)  
name = var.user_names[count.index]
}
