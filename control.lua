if script.active_mods["debugadapter"] then
	require("__debugadapter__/debugadapter.lua")
end
require("blueprint_custom_data.blueprint_custom_data")

-- Require script.on_init()

-- require("script_events/on_init.lua")

script.on_init(function()
	log("On_Init: Testing Loading Limiter")
	end)

-- Require script.on_configuration_changed()

-- require("script_events/on_configuration_changed.lua")

script.on_configuration_changed(function(data)

	log("On_Configuration: Testing Loading Limiter")

end)

-- Require script.on_load()

require("script_events/on_load.lua")
