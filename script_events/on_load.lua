-- will run every time the script loads. game will not be available during on_load. This should only be used to handle resetting up metatables, making local references to variables in global, and setting up conditional event handlers.

--local variable
script.on_load(function()
	log("On_Load: Testing Loading Limiter")
  --Setting local reference to global variable
  --variable = global.variable

  --Conditional event handler
  --if global.trees then
  --  script.on_event(defines.events.on_tick, handle_tree_function)
  --end
end)
