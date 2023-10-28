resource "newrelic_alert_policy" "himani_policy" {
  name = "Himani_policy_terraform"
}

resource "newrelic_nrql_alert_condition" "himani_policy_condition" {
  for_each = var.my_loop

  
  policy_id                      = newrelic_alert_policy.himani_policy.id
  type                           = each.value.type
  name                           = each.value.name
  description                    = each.value.description
  enabled                        = each.value.enabled

  nrql {
    query = each.value.nrql
  }

  critical {
    operator              = each.value.critical.operator
    threshold             = each.value.critical.threshold
    threshold_duration    = each.value.critical.threshold_duration
    threshold_occurrences = each.value.critical.threshold_occurrences
  }

  warning {
    operator              = each.value.warning.operator
    threshold             = each.value.warning.threshold
    threshold_duration    = each.value.warning.threshold_duration
    threshold_occurrences = each.value.warning.threshold_occurrences
  }
}



