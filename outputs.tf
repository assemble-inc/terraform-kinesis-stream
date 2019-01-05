output "stream_arn" {
  value = "${aws_kinesis_stream.stream.arn}"
}

output "policy_arn" {
  value = "${aws_iam_policy.kinesis_policy.arn}"
}
