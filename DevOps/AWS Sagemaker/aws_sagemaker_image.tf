#AWS SAGEMAKER IMAGE

resource "aws_sagemaker_image" "example" {
  image_name = "example"
  role_arn   = aws_iam_role.test.arn
}
