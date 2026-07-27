aws_region   = "us-east-1"
environment  = "dev"
project_name = "serverless-lab"

function_name = "serverless-lab-dev-hello"
runtime       = "nodejs24.x"
handler       = "hello.handler"
filename      = "../../../../lambda.zip"

memory_size = 128
timeout     = 10

iam_state_bucket = "serverless-lab-dev-terraform-state"
iam_state_key    = "iam/terraform.tfstate"