resource "aws_iam_policy" "policy_teste" {
  name        = "policy_teste"
  description = " IAM policy for S3 bucket"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect    = "Allow",
      Action    = [
        "s3:GetObject",
        "s3:PutObject",
        "s3:ListBucket"
      ],
      Resource  = [
        "${aws_s3_bucket.my_bucket.arn}",
        "${aws_s3_bucket.my_bucket.arn}/*"
      ]
    }]
  })
}

resource "aws_iam_role_policy_attachment" "example_attachment" {
  role       = aws_iam_role.role_s3_teste.name
  policy_arn = aws_iam_policy.policy_teste.arn
}
