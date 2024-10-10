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