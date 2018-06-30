-- Required Lua/Lapis includes
local lapis = require("lapis")
local config = require("lapis.config").get()

-- Initial Application setup.
local app = lapis.Application()

-- Enable ETLua templating and set a default layout.
app:enable("etlua")
app.layout = require "views.layout_default"

-- Default index page.
app:get("/", function(self)
  -- Display an error message if appropriate.
  err_msg = self.session.err_msg
  self.session.err_msg = nil

  return { render = "main" }
end)

return app
