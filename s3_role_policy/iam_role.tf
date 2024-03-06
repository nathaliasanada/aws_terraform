resource "aws_iam_role" "role_s3_teste" {
  name               = "role_s3_teste"
  assume_role_policy = jsonencode({
    Version   = "2012-10-17",
    Statement = [{
      Effect    = "Allow",
      Principal = {
        Service = "s3.amazonaws.com"
      },
      Action    = "sts:AssumeRole"
    }]
  })
}

