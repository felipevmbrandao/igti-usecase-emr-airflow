variable "aws_region" {
  default = "us-east-2"
}

variable "base_bucket_name" {
  default = "datalake-fbrandao-igti-tf"
}

variable "base_bucket_name_kinesis" {
  default = "datalake-fbrandao-igti-kinesis"
}

variable "ambiente" {
  default = "producao"
}

variable "numero_conta" {
  default = "784019095838"
}

variable "lambda_function_name" {
  default = "IGTIexecutaEMR"
}

variable "key_pair_name" {
  default = "brandao_igti_teste"
}

variable "airflow_subnet_id" {
  default = "subnet-68ceb324"
} 

variable "vpc_id" {
  default = "vpc-e5ec5b8e"
}
