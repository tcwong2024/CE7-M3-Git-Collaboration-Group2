# Define the SNS Topic
resource "aws_sns_topic" "my_topic" {
  name = var.sns_topic_name
}

# Define the SNS Topic Subscription
resource "aws_sns_topic_subscription" "my_topic_subscription" {
  topic_arn = aws_sns_topic.my_topic.arn
  protocol  = "email"
  endpoint  = var.sns_topic_endpoint_email
}