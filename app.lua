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

  -- Set the web page's title.
  page_title = 'MCURef :D'

  return { render = "main" }
end)

-- Default index page.
app:get("/mcu_list", function(self)
  -- Display an error message if appropriate.
  err_msg = self.session.err_msg
  self.session.err_msg = nil

  -- Set the web page's title.
  page_title = 'MCURef List Page'

  return { render = "mcu_list" }
end)

return app
