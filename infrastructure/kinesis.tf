# resource "aws_kinesis_firehose_delivery_stream" "extended_s3_stream" {
#   name        = "igti-kinesis-firehose-s3-stream"
#   destination = "extended_s3"
#
#   extended_s3_configuration {
#     role_arn   = aws_iam_role.firehose_role.arn
#     bucket_arn = aws_s3_bucket.stream.arn
#     prefix = "firehose/"
#     buffer_size = 5
#     buffer_interval = 60
#    
#     cloudwatch_logging_options {
#         enabled = true
#         log_group_name = aws_cloudwatch_log_group.firehose.name
#         log_stream_name = aws_cloudwatch_log_stream.firehose.name
#     }
#    
#   }
# }
# resource "aws_iam_policy" "firehose" {
#   name        = "IGTIFirehosePolicy"
#   path        = "/"
#   description = "Provides write permissions to CloudWatch Logs and S3"
#
#   policy = <<EOF
# {
#     "Version": "2012-10-17",
#     "Statement": [
#         {
#             "Effect": "Allow",
#             "Action": [
#                 "logs:CreateLogGroup",
#                 "logs:CreateLogStream",
#                 "logs:PutLogEvents",
#                 "glue:*"
#             ],
#             "Resource": "*"
#         },
#         {
#             "Effect": "Allow",
#             "Action": [
#                 "s3:AbortMultipartUpload",
#                 "s3:GetBucketLocation",
#                 "s3:GetObject",
#                 "s3:GetObjectVersion",
#                 "s3:DeleteObject",
#                 "s3:ListBucket",
#                 "s3:ListBucketMultipartUploads",
#                 "s3:PutObject"
#             ],
#             "Resource": [
#               "${aws_s3_bucket.stream.arn}",
#               "${aws_s3_bucket.stream.arn}/*"
#             ]
#         }
#     ]
# }
# EOF
# }
#
# resource "aws_iam_role_policy_attachment" "firehose_attach" {
#   role       = aws_iam_role.firehose_role.name
#   policy_arn = aws_iam_policy.firehose.arn
# }


