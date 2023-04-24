mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-failure.sentinel"
  }
}

import "static" "approved" {
  source = "../../approved.json"
  format = "json"
}

test {
  rules = {
    main = false
  }
}
