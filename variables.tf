variable "aws_region" {
  description = "AWSのリージョン"
  type        = string
  default     = "ap-northeast-1"  # 東京リージョン（任意）
}

variable "aws_profile" {
  description = "AWS CLIのプロファイル名"
  type        = string
  default     = "default"  # AWS CLIで設定したプロファイル名
}
