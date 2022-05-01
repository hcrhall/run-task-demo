// This configuration will genenrate AWS resource for demonstration purposes

resource "aws_lambda_function" "hello_world" {
  function_name = "hello_world"
  role          = "arn:aws:lambda:us-east-1:account-id:resource-id"
  handler       = "exports.test"
  runtime       = "nodejs12.x"
  memory_size   = 1024

  // tracing_config {
  //   mode = "PassThrough"
  // }

}
