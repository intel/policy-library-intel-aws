mock "tfplan/v2" {
  module {
    source = "../../testdata/mock-tfplan-success.sentinel"
  }
}

import "static" "approved" {
  source = "../../approved.json"
  format = "json"
}

test {
  rules = {
    main = true
  }
}
