resource "aws_lambda_function" "api_lambda" {
  filename         = "lambda_function.zip"
  function_name    = "LambdaFunctionOverHttps"
  role             = aws_iam_role.lambda_role.arn
  handler          = "lambda_function.lambda_handler"
  source_code_hash = filebase64sha256("lambda_function.zip")
  runtime          = "python3.12"
  timeout          = 5
  memory_size      = 512
}
