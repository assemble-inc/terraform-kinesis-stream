variable "stream_name" {
  type = "string"
}

variable "shard_count" {
  default = 1
}

variable "retention_period" {
  default = 24
}

variable "tags" {
  type = "map"
}
