resource "aws_kinesis_stream" "stream" {
  name             = "${var.stream_name}"
  shard_count      = "${var.shard_count}"
  retention_period = "${var.retention_period}"
}

data "aws_iam_policy_document" "kinesis_policy_document" {
  statement {
    actions = [
      "kinesis:DescribeStream",
      "kinesis:ListStreams",
      "kinesis:PutRecord",
      "kinesis:PutRecords",
      "kinesis:GetRecords",
      "kinesis:GetShardIterator",
    ]

    effect    = "Allow"
    resources = ["${aws_kinesis_stream.stream.arn}"]
  }
}

resource "aws_iam_policy" "kinesis_policy" {
  name        = "${aws_kinesis_stream.stream.name}_stream_policy"
  description = "Kinesis Read Write access permissions to ${aws_kinesis_stream.stream.name}"
  policy      = "${data.aws_iam_policy_document.kinesis_policy_document.json}"
}
