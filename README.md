# Terraform Kinesis Stream

This is a convenience module for AWS Kinesis Stream

## Usage

```tf
module "event_stream" {
  source      = "assemble-inc/stream/kinesis"
  stream_name = "events"
}
```

## Inputs

- **stream_name**: Stream name
- **shard_count**: Shard capacity
- **retention_period**: Retention period
- **tags**: Tags map

## Outputs

- **stream_arn**: Stream ARN
- **policy_arn**: Stream Policy ARN
