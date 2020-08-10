function on_tick(e)

	if loading_limiter_ticks ~= settings.global["loading-limiter-ticks"].value then
		log("Cange nth tick to " .. loading_limiter_ticks)
		event.on_nth_tick(loading_limiter_ticks, nil)
		loading_limiter_ticks = settings.global["loading-limiter-ticks"].value
		event.on_nth_tick(loading_limiter_ticks, on_tick)
	end

	-- log("Event tick: " .. e.tick .. " modulo ".. loading_limiter_ticks)

	--game.print("Event tick: " .. e.tick .. " modulo ".. loading_limiter_ticks)

	local limiters = game.surfaces[1].find_entities_filtered{name = "loading-limiter"}

	game.print("Found " .. #limiters .. " limiters")

	for key, value in pairs(limiters)
	do
		local behavoir = value.get_control_behavior()
		if behavoir.enabled == true then
			local network = value.get_merged_signals()
			game.print(serpent.line(behavoir.enabled) .. "\n" .. serpent.block(network))
		end
	end
end
