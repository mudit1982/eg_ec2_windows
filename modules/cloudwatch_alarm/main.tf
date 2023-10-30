resource "aws_cloudwatch_metric_alarm" "foobar" {
  alarm_name                = var.alarm_name
  comparison_operator       = var.comparison_operator 
  evaluation_periods        = var.evaluation_periods
  }
