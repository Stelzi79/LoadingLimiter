-- will run every time the script loads. game will not be available during on_load. This should only be used to handle resetting up metatables, making local references to variables in global, and setting up conditional event handlers.

local function on_load()

	log("On_Load: Testing Loading Limiter")
	log("Run Loading Limiter every " .. loading_limiter_ticks .. " Ticks")
  --Setting local reference to global variable
  --variable = global.variable
	event.on_configuration_changed(function() log("on_configuration_changed") end)

end
