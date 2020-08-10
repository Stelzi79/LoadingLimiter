function on_tick(e)

	if loading_limiter_ticks ~= settings.global["loading-limiter-ticks"].value then
		log("Cange nth tick to " .. loading_limiter_ticks)
		event.on_nth_tick(loading_limiter_ticks, nil)
		loading_limiter_ticks = settings.global["loading-limiter-ticks"].value
		event.on_nth_tick(loading_limiter_ticks, on_tick)
	end

	--log("Event tick: " .. e.tick .. " modulo ".. loading_limiter_ticks)

	game.print("Event tick: " .. e.tick .. " modulo ".. loading_limiter_ticks)

end
