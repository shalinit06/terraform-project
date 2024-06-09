environments = {
  dev = {
    subenvs = {
      natasha = {
        type    = "instance"
        size    = "xsmall"
        name    = "wks"
        db_type = "mysql"
        count   = 1
      }
      clint = {
        type    = "instance"
        size    = "xsmall"
        name    = "wks"
        db_type = "mysql"
        count   = 1
      }
    }
  }
  staging = {
    subenvs = {
      integration = {
        type    = "instance"
        size    = "large"
        name    = "wks"
        db_type = "mysql"
        count   = 2
      }
      performance = {
        type    = "instance"
        size    = "large"
        name    = "wks"
        db_type = "mysql"
        count   = 2
      }
    }
  }
  prod = {
    subenvs = {
      default = {
        type    = "instance"
        size    = "xlarge"
        name    = "wks"
        db_type = "mysql"
        count   = 3
      }
    }
  }
}

