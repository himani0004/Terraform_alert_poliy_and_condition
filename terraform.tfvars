my_loop = {
  "condition-1" = {

    type                           = "static"
    name                           = "Himani_alert_condition1"
    description                    = "This alert is for CPU usage"
    enabled                        = true
    nrql                           = "SELECT average(host.cpuPercent) AS 'CPU used %' FROM Metric WHERE `entityGuid` = 'NDA0Mzc0NnxJTkZSQXxOQXwyNzExMjQ4Njc1OTYwMTU5NTcw'"
    
    critical = {
      operator              = "above"
      threshold             = 12
      threshold_duration    = 300
      threshold_occurrences = "all"
    }
    warning = {
      operator              = "above_or_equals"
      threshold             = 6
      threshold_duration    = 600
      threshold_occurrences = "all"
    }
  }

  "condition-2" = {
    
    type                           = "static"
    name                           = "Himani_alert_condition2"
    description                    = "This alert is for Memory usage"
    enabled                        = true
    nrql                           = "SELECT average(host.memoryUsedPercent) AS 'Memory used %' FROM Metric WHERE `entityGuid` = 'NDA0Mzc0NnxJTkZSQXxOQXwyNzExMjQ4Njc1OTYwMTU5NTcw'"
    critical = {
      operator              = "above"
      threshold             = 10
      threshold_duration    = 300
      threshold_occurrences = "all"
    }
    warning = {
      operator              = "above"
      threshold             = 5
      threshold_duration    = 600
      threshold_occurrences = "all"
    }
  }
  "condition-3" = {

    type                           = "static"
    name                           = "Himani_alert_condition3"
    description                    = "This alert is for storage usage"
    enabled                        = true
    nrql                           ="SELECT average(host.disk.usedPercent) as 'Storage used %' FROM Metric WHERE `entityGuid` = 'NDA0Mzc0NnxJTkZSQXxOQXwyNzExMjQ4Njc1OTYwMTU5NTcw'"
    
    critical = {
      operator              = "above"
      threshold             = 12
      threshold_duration    = 300
      threshold_occurrences = "all"
    }
    warning = {
      operator              = "above_or_equals"
      threshold             = 6
      threshold_duration    = 600
      threshold_occurrences = "all"
    }
  }
}