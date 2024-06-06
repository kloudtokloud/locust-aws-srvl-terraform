output "lambda_function_name" {
  value = aws_lambda_function.api_lambda.function_name
}

output "api_gateway_url" {
  value = aws_api_gateway_deployment.api_deployment.invoke_url
  description = "The URL of the API Gateway"
}

