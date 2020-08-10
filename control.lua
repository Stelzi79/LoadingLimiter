if script.active_mods["debugadapter"] then
	require("__debugadapter__/debugadapter.lua")
end
require("blueprint_custom_data.blueprint_custom_data")

-- local loading_limiter_ticks
if settings.global["loading-limiter-ticks"].value == nil then
	loading_limiter_ticks = 60
else
	loading_limiter_ticks = settings.global["loading-limiter-ticks"].value
end
log("Setting loading_limiter_ticks: " .. loading_limiter_ticks .. " Ticks")

event = require("__flib__.event")

-- Require script.on_init()

--require("script_events/on_init.lua")

-- Require script.on_configuration_changed()

require("script_events/on_configuration_changed.lua")
-- event.on_configuration_changed(function() log("on_configuration_changed") end)

-- Require script.on_load()

-- require("script_events/on_load.lua")
--event.on_load(on_load)

-- Require handle_tree_function

require("script_events/on_tick.lua")
event.on_nth_tick(loading_limiter_ticks, on_tick)


