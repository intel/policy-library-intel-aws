mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-failure.sentinel"
  }
}

import "module" "policy_summary" {
  source = "../../../../modules/policysummary.sentinel"
}

test {
  rules = {
    main = false
  }
}
