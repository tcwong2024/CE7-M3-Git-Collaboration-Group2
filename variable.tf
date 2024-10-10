variable "lambda_function_name" {
  description = "Name of lambda function"
  type        = string
  default     = "wtc-group-02-tf-lambda-fn"
}

variable "lambda_file_name" {
  description = "Name of lambda file to be zipped"
  type        = string
  default     = "wtc_group_02_lambda_function"
}

# Added by WTC
variable "region" {
  description = "The AWS region where resources will be created"
  type        = string
}

# *****************************************************************************
# Below variable for S3 bucket setup
# *****************************************************************************

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "wtc-group-02-s3-bucket"
}

variable "environment" {
  description = "The environment type (e.g., dev, prod)"
  type        = string
  default     = "dev"
}

# *****************************************************************************
# Below variable for EC2 instance setup
# *****************************************************************************
variable "ec2_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "wtc-group-02-ec2-instance"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "EC2 Key Pair"
  type        = string
  default     = "wtc-keypair-useast1"
}

variable "subnet_id" {
  description = "The subnet ID to launch the instance in"
  type        = string
}

variable "sg_name" {
  description = "Name of EC2 security group"
  type        = string
  default     = "wtc-eom2-nv-ssh-http-https"
}

variable "subnet_name" {
  description = "Name of subnet to use"
  type        = string
  default     = "wtc-eom2-public-subnet-us-east-1a"
}