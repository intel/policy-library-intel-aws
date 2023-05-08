mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-success.sentinel"
  }
}

import "module" "policy_summary" {
  source = "../../../../modules/policysummary.sentinel"
}

test {
  rules = {
    main = true
  }
}
