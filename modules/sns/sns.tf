resource "aws_sns_topic" "my_topic" {
  name = var.sns_topic_name
  tags = var.tags
}