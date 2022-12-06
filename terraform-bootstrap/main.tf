// Terraform State A resources
resource "aws_s3_bucket" "tf_state_a" {
  bucket = "lh-atlantis-tf-state-a"
  acl    = "private"
}

resource "aws_iam_role" "role_a" {
  name = "role-a"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          AWS = "825926482455"
        },
      },
    ]
  })
  inline_policy {
      name = "state-a-access-policy"
      policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
          {
            Action   = ["s3:ListBucket"]
            Effect   = "Allow"
            Resource = aws_s3_bucket.tf_state_a.arn
          },
          {
            Action   = ["s3:GetObject", "s3:PutObject", "s3:DeleteObject"]
            Effect   = "Allow"
            Resource = "${aws_s3_bucket.tf_state_a.arn}/terraform.tfstate"
          },
        ]
      })
    }
}

// Terraform State B resources
resource "aws_s3_bucket" "tf_state_b" {
  bucket = "lh-atlantis-tf-state-b"
  acl    = "private"
}

resource "aws_iam_role" "role_b" {
  name = "role-b"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          AWS = "825926482455"
        },
      },
    ]
  })
  inline_policy {
      name = "state-b-access-policy"
      policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
          {
            Action   = ["s3:ListBucket"]
            Effect   = "Allow"
            Resource = aws_s3_bucket.tf_state_b.arn
          },
          {
            Action   = ["s3:GetObject", "s3:PutObject", "s3:DeleteObject"]
            Effect   = "Allow"
            Resource = "${aws_s3_bucket.tf_state_b.arn}/terraform.tfstate"
          },
        ]
      })
    }
}