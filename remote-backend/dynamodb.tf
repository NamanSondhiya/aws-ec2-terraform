resource "aws_dynamodb_table" "basic_dynamodb_table" {

  name           = "remote-backend-table-naman-ec2"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "remote-backend-table-naman-ec2"
  }
  
}