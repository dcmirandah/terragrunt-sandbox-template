terraform {
  source = "../../../modules/random-password"
}

inputs = {
  length          = 20
  include_special = true
}
