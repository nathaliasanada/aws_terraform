# SNS

module sns {
  source = "../../modules/sns/"
  sns_topic_name = var.sns_topic_name
  tags = var.tags
}
