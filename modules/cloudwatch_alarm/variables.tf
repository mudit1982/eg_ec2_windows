variable "alarm_name" {
  type        = string
  description = "Name of the Cloudwatch alarm"
}

variable "comparison_operator" {
  type        = string
  description = "Comparison Operator"
}

variable "evaluation_periods" {
  type        = string
  description = "Period of evaluation"
}