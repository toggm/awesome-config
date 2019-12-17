-----------------------------------------------------------------------------------------------------------------------
--                                                   Base setup                                                      --
-----------------------------------------------------------------------------------------------------------------------

-- Configuration file selection
-----------------------------------------------------------------------------------------------------------------------
--local rc = "colorless.rc-colorless"

--local rc = "color.red.rc-red"
--local rc = "color.blue.rc-blue"
--local rc = "color.orange.rc-orange"
--local rc = "color.green.rc-green"

local rc = "shade.ruby.rc-ruby"
--local rc = "shade.steel.rc-steel"

require(rc)
local awful = require("awful")


do
  local cmds =
  {
    "compton",
    "nextcloud"
  }

  for _,i in pairs(cmds) do
    awful.util.spawn(i)
  end
end

-- autolock screen
awful.spawn.easy_async_with_shell("xautolock -time 5 -locker 'i3lock --color=000000' -corners +00-")
