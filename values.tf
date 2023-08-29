locals {
  values_default = yamlencode({
    "resources" : {
      "requests" : {
        "cpu" : "150m"
        "memory" : "64Mi"
      }
    }
    "serviceMonitor" : {
      "enabled" : true
    }
  })
}

data "utils_deep_merge_yaml" "values" {
  count = var.enabled ? 1 : 0
  input = compact([
    local.values_default,
    var.values
  ])
}
