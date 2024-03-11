mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-success.sentinel"
  }
}

import "static" "approved" {
  source = "../../../../../imports/static/approvedinstances.json"
  format = "json"
}

import "module" "policy_summary" {
  source = "../../../../../imports/modules/policy_summary.sentinel"
}

test {
  rules = {
    main = true
  }
}
