provider "aws" {
  region  = "ap-northeast-1"
}
 
resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "test-dynamodb-table"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "UserId"
  range_key      = "Title"
 
  attribute {
    name = "UserId"
    type = "S"
  }
 
  attribute {
    name = "Title"
    type = "S"
  }
}
 