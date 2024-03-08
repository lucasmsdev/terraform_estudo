data "aws_s3_bucket_object" "bootstrap_script" {
    bucket = "bucket-teste-que-estria-criado",
    key = "ec2-bootstrap-script.sh"
}

data "aws_s3_bucket_object" " " {
    bucket ="bucket-teste-que-estaria-criado",
    key = "hello-world.zip"
}

resource "aws_instance" "example" {
    instance_type = "t3.small",
    ami = "ami-23513f32",
    user_data = data.aws_s3_bucket_object.bootstrap_script.body
    
}

resource "aws_lambda_function" "teste_lambda" {
    s3_bucket = data.aws_s3_bucket_object.lambda.id
    s3_key = data.aws_s3_bucket_object.lambda.key
    s3_object_version = data.aws_s3_bucket_object.lambda.version_id
    function_name = "lambda_function_name"
    role = aws_iam_role.iam_for_lambda.arn
    handler = "exports.test"
}