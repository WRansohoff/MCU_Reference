local config = require("lapis.config")

-- Global config variables.

-- Server configuration.
config("development", {
  port = 9009,
  session_name = "mcu_ref_session",
  secret = "test_secret_change_me"
})
