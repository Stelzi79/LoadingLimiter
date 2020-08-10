if script.active_mods["debugadapter"] then
	require("__debugadapter__/debugadapter.lua")
end
require("blueprint_custom_data.blueprint_custom_data")
mod_events = {
	["on_pre_ghost_deconstructed"] = true,
	["on_player_mined_entity"] = true,
	["on_gui_text_changed"] = true,
	["on_built_entity"] = true,
	["on_robot_built_entity"] = true,
	["on_tick"] = true,
	["on_gui_opened"] = true,
	["on_gui_click"] = true,
	["on_gui_closed"] = true,
	["on_entity_settings_pasted"] = true,
	["on_configuration_changed"] = true,
	["script_raised_revive"] = true
}
events = {
	"on_ai_command_completed",
	"on_area_cloned",
	"on_biter_base_built",
	"on_built_entity",
	"on_cancelled_deconstruction",
	"on_cancelled_upgrade",
	"on_character_corpse_expired",
	"on_chart_tag_added",
	"on_chart_tag_modified",
	"on_chart_tag_removed",
	"on_chunk_charted",
	"on_chunk_deleted",
	"on_chunk_generated",
	"on_combat_robot_expired",
	"on_console_chat",
	"on_console_command",
	"on_cutscene_waypoint_reached",
	"on_difficulty_settings_changed",
	"on_entity_cloned",
	"on_entity_damaged",
	"on_entity_died",
	"on_entity_renamed",
	"on_entity_settings_pasted",
	"on_entity_spawned",
	"on_force_created",
	"on_forces_merged",
	"on_forces_merging",
	"on_game_created_from_scenario",
	"on_gui_checked_state_changed",
	"on_gui_click",
	"on_gui_closed",
	"on_gui_elem_changed",
	"on_gui_opened",
	"on_gui_selection_state_changed",
	"on_gui_text_changed",
	"on_gui_value_changed",
	"on_land_mine_armed",
	"on_lua_shortcut",
	"on_marked_for_deconstruction",
	"on_marked_for_upgrade",
	"on_market_item_purchased",
	"on_mod_item_opened",
	"on_picked_up_item",
	"on_player_alt_selected_area",
	"on_player_ammo_inventory_changed",
	"on_player_armor_inventory_changed",
	"on_player_banned",
	"on_player_built_tile",
	"on_player_cancelled_crafting",
	"on_player_changed_force",
	"on_player_changed_position",
	"on_player_changed_surface",
	"on_player_cheat_mode_disabled",
	"on_player_cheat_mode_enabled",
	"on_player_configured_blueprint",
	"on_player_crafted_item",
	"on_player_created",
	"on_player_cursor_stack_changed",
	"on_player_deconstructed_area",
	"on_player_demoted",
	"on_player_died",
	"on_player_display_resolution_changed",
	"on_player_display_scale_changed",
	"on_player_driving_changed_state",
	"on_player_dropped_item",
	"on_player_fast_transferred",
	"on_player_gun_inventory_changed",
	"on_player_joined_game",
	"on_player_kicked",
	"on_player_left_game",
	"on_player_main_inventory_changed",
	"on_player_mined_entity",
	"on_player_mined_item",
	"on_player_mined_tile",
	"on_player_muted",
	"on_player_pipette",
	"on_player_placed_equipment",
	"on_player_promoted",
	"on_player_removed",
	"on_player_removed_equipment",
	"on_player_repaired_entity",
	"on_player_respawned",
	"on_player_rotated_entity",
	"on_player_selected_area",
	"on_player_setup_blueprint",
	"on_player_toggled_alt_mode",
	"on_player_toggled_map_editor",
	"on_player_trash_inventory_changed",
	"on_player_unbanned",
	"on_player_unmuted",
	"on_player_used_capsule",
	"on_post_entity_died",
	"on_pre_chunk_deleted",
	"on_pre_entity_settings_pasted",
	"on_pre_ghost_deconstructed",
	"on_pre_player_crafted_item",
	"on_pre_player_died",
	"on_pre_player_left_game",
	"on_pre_player_mined_item",
	"on_pre_player_removed",
	"on_pre_robot_exploded_cliff",
	"on_pre_surface_cleared",
	"on_pre_surface_deleted",
	"on_put_item",
	"on_research_finished",
	"on_research_started",
	"on_resource_depleted",
	"on_robot_built_entity",
	"on_robot_built_tile",
	"on_robot_exploded_cliff",
	"on_robot_mined",
	"on_robot_mined_entity",
	"on_robot_mined_tile",
	"on_robot_pre_mined",
	"on_rocket_launch_ordered",
	"on_rocket_launched",
	"on_runtime_mod_setting_changed",
	"on_script_path_request_finished",
	"on_sector_scanned",
	"on_selected_entity_changed",
	"on_surface_cleared",
	"on_surface_created",
	"on_surface_deleted",
	"on_surface_imported",
	"on_surface_renamed",
	"on_technology_effects_reset",
	"on_tick",
	"on_train_changed_state",
	"on_train_created",
	"on_train_schedule_changed",
	"on_trigger_created_entity",
	"on_trigger_fired_artillery",
	"on_unit_added_to_group",
	"on_unit_group_created",
	"on_unit_removed_from_group",
	"script_raised_built",
	"script_raised_destroy",
	"script_raised_revive",
	"on_configuration_changed"
}
event_ids = {}
for _, event_name in pairs(events) do
	if defines.events[event_name] then
		event_ids[defines.events[event_name]] = event_name
	end
end
script.on_init(
	function()
		global.combinators983 = {}
		global.guis983 = {}
		global.signals983 = {}
		for name983, _ in pairs(game.virtual_signal_prototypes) do
			global.signals983[name983] = "virtual"
		end
		for name983, _ in pairs(game.item_prototypes) do
			global.signals983[name983] = "item"
		end
		for name983, _ in pairs(game.fluid_prototypes) do
			global.signals983[name983] = "fluid"
		end
		global.presets983 = {}
		global.history983 = {}
		global.historystate983 = {}
		global.textboxes983 = {}
		global.counter983 = 0
		global.events = {}
		global.version983 = 3
	end
)

script.on_configuration_changed(
	function(event)
		global.signals983 = {}
		for name983, _ in pairs(game.virtual_signal_prototypes) do
			global.signals983[name983] = "virtual"
		end
		for name983, _ in pairs(game.item_prototypes) do
			global.signals983[name983] = "item"
		end
		for name983, _ in pairs(game.fluid_prototypes) do
			global.signals983[name983] = "fluid"
		end
		if global.version983 then
			combinator_event(event)
		end
		if global.version983 < 2 then
			for unit_nr983, gui983 in pairs(global.guis983) do
				gui983.destroy()
				global.guis983[unit_nr983] = nil
			end
			global.version983 = 2
		end
	end
)

function combinator_event(event)
	local event_name = event_ids[event.name]
	if not global.events[event_name] then
		return
	end
	for unit_nr983, func983 in pairs(global.events[event_name]) do
		local tick = event.tick
		local tbl983 = global.combinators983[unit_nr983]
		if event_name == "on_tick" and tick < tbl983.next_tick then
			return
		end
		combinator_process(event, unit_nr983, func983)
	end
end
function combinator_on_nth_tick(event)
	if not global.events["on_nth_tick"] then
		return
	end
	for tick, funcs in pairs(global.events["on_nth_tick"]) do
		if event.tick % tick == 0 then
			for unit_nr983, func983 in pairs(funcs) do
				combinator_process(event, unit_nr983, func983)
			end
		end
	end
end

function destroy_combinator983(unit_nr983)
	for _, event in pairs(events) do
		if global.events[event] then
			global.events[event][unit_nr983] = nil
		end
	end
	if global.events["on_nth_tick"] then
		for tick, functions in pairs(global.events["on_nth_tick"]) do
			functions[unit_nr983] = nil
			if table_length(functions) == 0 then
				global.events["on_nth_tick"][tick] = nil
			end
		end
	end
	if global.events["on_nth_tick"] and table_length(global.events["on_nth_tick"]) == 0 then
		global.events["on_nth_tick"] = nil
	end
	if global.combinators983[unit_nr983].blueprint_data and global.combinators983[unit_nr983].blueprint_data.valid then
		global.combinators983[unit_nr983].blueprint_data.destroy()
	end
	global.combinators983[unit_nr983] = nil
end

function combinator_process(event, unit_nr983, func983)
	local tbl983 = global.combinators983[unit_nr983]
	if not tbl983 or not tbl983.entity or not tbl983.entity.valid then
		destroy_combinator983(unit_nr983)
		return
	end
	combinator = tbl983.entity
	delay = nil
	--game.players[1].--print(tbl983.code)
	output = tbl983.output
	local copiedoutput = luacom_deepcopy(output)
	var = tbl983.variables
	rednet = {}
	rednet.mt = {}
	greennet = {}
	greennet.mt = {}
	rednet.mt.__index = function(table, key)
		rednet = get_red_network(tbl983.entity, copiedoutput)
		return rednet[key]
	end
	rednet.mt.__pairs = function(tbl)
		rednet = get_red_network(tbl983.entity, copiedoutput)
		tbl = rednet
		local function stateless_iter(tbl, k)
			local v
			k, v = next(tbl, k)
			if v then
				return k, v
			end
		end

		-- Return an iterator function, the table, starting point
		return stateless_iter, tbl, nil
	end
	greennet.mt.__index = function(table, key)
		greennet = get_green_network(tbl983.entity, copiedoutput)
		return greennet[key]
	end
	greennet.mt.__pairs = function(tbl)
		greennet = get_green_network(tbl983.entity, copiedoutput)
		tbl = greennet
		local function stateless_iter(tbl, k)
			local v
			k, v = next(tbl, k)
			if v then
				return k, v
			end
		end

		-- Return an iterator function, the table, starting point
		return stateless_iter, tbl, nil
	end
	setmetatable(rednet, rednet.mt)
	setmetatable(greennet, greennet.mt)

	--if tbl983.func then
	--local temp983 = string.gsub(tbl983.code, "\n", " ")
	--temp983 = string.gsub(temp983, "%s+", " ")
	--local _, count983 = string.gsub(temp983, "while true", "")
	--if count983 > 0 then
	--	tbl983.errors="pls dont.."
	--else
	local _, error983 = pcall(func983, event)
	if error983 then
		tbl983.errors = error983
	else
		tbl983.errors = ""
	end
	--end
	--end
	if output and not (type(output) == "table") then
		tbl983.errors = tbl983.errors .. "  +++output needs to be a table"
	else
		tbl983.output = output or {}
	end

	tbl983.variables = var or {}
	if compare_tables983(copiedoutput, output) then
		local actual_output983 = {}
		local i983 = 1
		tbl983.errors2 = ""
		for signal983, value983 in pairs(tbl983.output) do
			if global.signals983[signal983] then
				if type(value983) == "number" then
					if value983 >= -2147483648 and value983 <= 2147483647 then
						actual_output983[i983] = {
							signal = {type = global.signals983[signal983], name = signal983},
							count = (tonumber(value983) or 0),
							index = i983
						}
						i983 = i983 + 1
					else
						tbl983.errors2 =
							tbl983.errors2 .. "  +++output value must be between -2147483648 and 2147483647 (" .. signal983 .. ")"
						tbl983.output[signal983] = nil
					end
				else
					tbl983.errors2 = tbl983.errors2 .. "  +++output value must be a number (" .. signal983 .. ")"
					tbl983.output[signal983] = nil
				end
			else
				tbl983.errors2 = tbl983.errors2 .. "  +++invalid signal name in output (" .. signal983 .. ")"
				tbl983.output[signal983] = nil
			end
		end

		local control983 = tbl983.entity.get_or_create_control_behavior()
		control983.parameters = {parameters = actual_output983}
		if tbl983.errors .. tbl983.errors2 ~= "" then
			for _, player in pairs(game.players) do
				player.add_custom_alert(
					tbl983.entity,
					{type = "virtual", name = "luacom_error"},
					"LuaCombinator Error: " .. tbl983.errors .. tbl983.errors2,
					true
				)
			end
		end
	end
	if delay then
		tbl983.next_tick = event.tick + (tonumber(delay) or 0)
	end
	if tbl983.errors2 ~= "" or tbl983.errors ~= "" then
		game.players[tbl983.last_user].print("[" .. tbl983.number .. "] " .. tbl983.errors .. tbl983.errors2)
	end
	return nil, error983
end
--event_table = {}
--for _, event in pairs(events) do
--	if not mod_events[event] then
--		--table.insert(event_table, defines.events[event])
--		script.on_event(defines.events[event], combinator_event)
--	end
--end
for event_name, event in pairs(defines.events) do
	if not mod_events[event_name] then
		--table.insert(event_table, defines.events[event])
		script.on_event(event, combinator_event)
	end
end
--event_table = {defines.events["on_player_crafted_item"]}
--event_table = {}
--for ind, event in pairs(defines.events) do
--if ind == "on_player_crafted_item" then
--table.insert(event_table, event)
--end
--end
--
--script.on_event(event_table, combinator_event)

script.on_event(
	defines.events.on_pre_ghost_deconstructed,
	function(event)
		if event.ghost and event.ghost.type == "entity-ghost" and event.ghost.ghost_name == "loading-limiter" then
			local spot =
				event.ghost.surface.find_entities_filtered {
				name = "entity-ghost",
				inner_name = "luacom_blueprint_data",
				ghost_name = "luacom_blueprint_data",
				area = {
					{event.ghost.position.x - 0.1, event.ghost.position.y - 0.1},
					{event.ghost.position.x + 0.1, event.ghost.position.y + 0.1}
				}
			}
			if #spot > 0 then
				spot[1].destroy()
			end
		end
		combinator_event(event)
	end
)
script.on_event(
	defines.events.on_player_mined_entity,
	function(event)
		if event.entity and event.entity.name == "entity-ghost" and event.entity.ghost_name == "loading-limiter" then
			local spot =
				event.entity.surface.find_entities_filtered {
				name = "entity-ghost",
				inner_name = "luacom_blueprint_data",
				ghost_name = "luacom_blueprint_data",
				area = {
					{event.entity.position.x - 0.1, event.entity.position.y - 0.1},
					{event.entity.position.x + 0.1, event.entity.position.y + 0.1}
				}
			}
			if #spot > 0 then
				spot[1].destroy()
			end
		end
		combinator_event(event)
	end
)

function remove_colors983(text)
	text = string.gsub(text, "%[color=0,0,255%]", "")
	text = string.gsub(text, "%[color=0,128,192%]", "")
	text = string.gsub(text, "%[color=128,0,255%]", "")
	text = string.gsub(text, "%[color=255,128,0%]", "")
	text = string.gsub(text, "%[color=80,80,80%]", "")
	text = string.gsub(text, "%[color=0,128,0%]", "")
	text = string.gsub(text, "%[color=255,0,255%]", "")
	text = string.gsub(text, "%[img=luacom_bug%]", "")
	text = string.gsub(text, "%[/color%]", "")
	text = string.gsub(text, "%[font=default%-bold%]", "")
	text = string.gsub(text, "%[/font%]", "")
	return text
end

function format_code983(text)
	text = remove_colors983(text)
	local result = ""
	local indent = 0
	local i = 0
	local _, linecount = text:gsub("([^\n]*)\n?", "")
	local lines = linecount
	local last_indent = 0
	if string.sub(text, -1) == "\n" then
		lines = linecount + 1
	end
	local last_line = ""
	local count
	for line in text:gmatch("([^\n]*)\n?") do
		i = i + 1
		if i < lines then
			last_line = line
			last_indent = indent
			if settings.global["luacom-indent-code"].value then
				while string.sub(line, 1, 1) == " " do --remove indentation
					line = string.sub(line, 2)
				end
			end
			local tempindent = indent
			if string.sub(line, 1, 6) == "elseif" then
				local nextchar = string.gsub(string.sub(line, 7, 7), "[%w]", "a")
				if nextchar ~= "a" then
					tempindent = tempindent - 1
				end
			elseif string.sub(line, 1, 4) == "else" then
				local nextchar = string.gsub(string.sub(line, 5, 5), "[%w]", "a")
				if nextchar ~= "a" then
					tempindent = tempindent - 1
				end
			elseif string.sub(line, 1, 3) == "end" then
				local nextchar = string.gsub(string.sub(line, 4, 4), "[%w]", "a")
				if nextchar ~= "a" then
					tempindent = tempindent - 1
				end
			elseif string.sub(line, 1, 1) == "}" then
				tempindent = tempindent - 1
			end
			if settings.global["luacom-indent-code"].value then
				for i = 1, tempindent do
					line = "   " .. line
				end
			end
			if i > 1 then
				line = "\n" .. line
			end
			_, count = line:gsub("%f[%a]do%f[%A]", "")
			indent = indent + count
			_, count = line:gsub("%f[%a]function%f[%A]", "")
			indent = indent + count
			_, count = line:gsub("%f[%a]then%f[%A]", "")
			indent = indent + count
			_, count = line:gsub("{", "")
			indent = indent + count
			_, count = line:gsub("%f[%a]end%f[%A]", "")
			indent = math.max(0, indent - count)
			_, count = line:gsub("%f[%a]elseif%f[%A]", "")
			indent = math.max(0, indent - count)
			_, count = line:gsub("}", "")
			indent = math.max(0, indent - count)
			result = result .. line
		end
	end
	local del = false
	if #last_line == last_indent * 3 - 1 and #string.gsub(last_line, " ", "") == 0 then
		result = string.sub(result, 1, -(#last_line + 3))
		del = true
	end
	if (settings.global["luacom-colorize-code"] and settings.global["luacom-colorize-code"].value) then
		local blue = {
			"and",
			"break",
			"do",
			"else",
			"elseif",
			"end",
			"false",
			"for",
			"function",
			"goto",
			"if",
			"in",
			"local",
			"nil",
			"not",
			"or",
			"repeat",
			"return",
			"then",
			"true",
			"until",
			"while"
		}
		local lightblue = {
			"assert",
			"collectgarbage",
			"dofile",
			"error",
			"getfenv",
			"getmetatable",
			"ipairs",
			"load",
			"loadfile",
			"loadstring",
			"module",
			"next",
			"pairs",
			"pcall",
			"print",
			"rawequal",
			"rawget",
			"rawlen",
			"rawset",
			"require",
			"select",
			"setfenv",
			"setmetatable",
			"tonumber",
			"tostring",
			"type",
			"unpack",
			"xpcall",
			"string",
			"table",
			"math",
			"bit32",
			"coroutine",
			"io",
			"os",
			"debug",
			"package"
		}
		local violet = {
			"byte",
			"char",
			"dump",
			"find",
			"format",
			"gmatch",
			"gsub",
			"len",
			"lower",
			"match",
			"rep",
			"reverse",
			"sub",
			"upper",
			"abs",
			"acos",
			"asin",
			"atan",
			"atan2",
			"ceil",
			"cos",
			"cosh",
			"deg",
			"exp",
			"floor",
			"fmod",
			"frexp",
			"ldexp",
			"log",
			"log10",
			"max",
			"min",
			"modf",
			"pow",
			"rad",
			"random",
			"randomseed",
			"sin",
			"sinh",
			"sqrt",
			"tan",
			"tanh",
			"arshift",
			"band",
			"bnot",
			"bor",
			"btest",
			"bxor",
			"extract",
			"lrotate",
			"lshift",
			"replace",
			"rrotate",
			"rshift",
			"shift",
			"string.byte",
			"string.char",
			"string.dump",
			"string.find",
			"string.format",
			"string.gmatch",
			"string.gsub",
			"string.len",
			"string.lower",
			"string.match",
			"string.rep",
			"string.reverse",
			"string.sub",
			"string.upper",
			"table.concat",
			"table.insert",
			"table.maxn",
			"table.pack",
			"table.remove",
			"table.sort",
			"table.unpack",
			"math.abs",
			"math.acos",
			"math.asin",
			"math.atan",
			"math.atan2",
			"math.ceil",
			"math.cos",
			"math.cosh",
			"math.deg",
			"math.exp",
			"math.floor",
			"math.fmod",
			"math.frexp",
			"math.huge",
			"math.ldexp",
			"math.log",
			"math.log10",
			"math.max",
			"math.min",
			"math.modf",
			"math.pi",
			"math.pow",
			"math.rad",
			"math.random",
			"math.randomseed",
			"math.sin",
			"math.sinh",
			"math.sqrt",
			"math.tan",
			"math.tanh",
			"bit32.arshift",
			"bit32.band",
			"bit32.bnot",
			"bit32.bor",
			"bit32.btest",
			"bit32.bxor",
			"bit32.extract",
			"bit32.lrotate",
			"bit32.lshift",
			"bit32.replace",
			"bit32.rrotate",
			"bit32.rshift"
		}
		local pink = {"combinator", "rednet", "greennet", "var", "output", "delay"}
		--numbers
		result = string.gsub(result, "%f[%d%a]%d+%f[%c%p%s]", "[color=255,128,0]%1[/color]")
		--blue
		for _, key in pairs(blue) do
			result = string.gsub(result, "%f[%a](" .. key .. ")%f[%A]", "[font=default-bold][color=0,0,255]%1[/color][/font]")
		end
		--lightblue
		for _, key in pairs(lightblue) do
			result = string.gsub(result, "%f[%a](" .. key .. ")%f[%A]", "[font=default-bold][color=0,128,192]%1[/color][/font]")
		end
		--violet
		for _, key in pairs(violet) do
			result = string.gsub(result, "%f[%a](" .. key .. ")%f[%A]", "[font=default-bold][color=128,0,255]%1[/color][/font]")
		end
		for _, key in pairs(pink) do
			result = string.gsub(result, "%f[%a](" .. key .. ")%f[%A]", "[color=255,0,255]%1[/color]")
		end
		----strings
		--	abc983=-1
		--	result = string.gsub(result,"\"",function(input)
		--		abc983=abc983+1
		--		if abc983%2==0 then
		--			return "quotationopen_"..math.floor(abc983/2).."_983"
		--		else
		--			return "quotationclose_"..math.floor(abc983/2).."_983"
		--		end
		--		end)
		--	for i=0, abc983/2 do
		--		result = string.gsub(result,"quotationopen_"..i.."_983[%a%d%s%p]+quotationclose_"..i.."_983","[color=80,80,80]%1[/color]")
		--		result = string.gsub(result,"quotationopen_"..i.."_983","\"")
		--		result = string.gsub(result,"quotationclose_"..i.."_983","\"")
		--	end
		--
		result = string.gsub(result, '".-"', "[color=80,80,80]%1[/color]")
		result = result:gsub("%-%-%[%[", "opencomment983")
		result = result:gsub("%-%-%]%]", "closecomment983")
		--[[multiline
		comments --]]
		result = result .. "closecomment983endoffile983"
		result = string.gsub(result, "opencomment983.-closecomment983", "[color=0,128,0]%1[/color]")
		result = string.gsub(result, "closecomment983endoffile983", "")
		result = string.gsub(result, "closecomment983%[/color%]endoffile983", "[/color]")
		--if count >0 then
		--result = string.sub(result,1,-13)
		--result = result.."[/color]"
		--else
		--result = string.sub(result,1,-5)
		--end
		--comments
		local res = ""
		local i = 0
		for line in result:gmatch("([^\n]*)\n?") do
			i = i + 1
			if i < lines then
				if i > 1 then
					line = "\n" .. line
				end
				count = 0
				line, count = string.gsub(line, "%-%-", "[color=0,128,0]%1", 1)
				if count > 0 then
					line = line .. "[/color]"
				end
				res = res .. line
			end
		end
		res = res:gsub("opencomment983", "--[[")
		res = res:gsub("closecomment983", "--]]")
		if del then
			res = string.sub(res, 1, -2)
		end
		result = ""
		local colored = 0
		i = 1
		while i <= #res do
			if string.sub(res, i, i) == "[" and (string.sub(res, i, i + 5) == "[font=" or string.sub(res, i, i + 6) == "[color=") then
				--print983("tag found"..temp)
				--temp=i
				if colored == 0 then
					result = result .. string.sub(res, i, i)
				end
				for j = 1, 50 do
					if colored == 0 then
						result = result .. string.sub(res, i + j, i + j)
					end
					if string.sub(res, i + j, i + j) == "]" then
						i = i + j
						break
					end
				end
				if string.sub(res, i + 1, i + 7) == "[color=" then
					i = i + 1
					if colored == 0 then
						result = result .. string.sub(res, i, i)
					end
					for j = 1, 50 do
						if colored == 0 then
							result = result .. string.sub(res, i + j, i + j)
						end
						if string.sub(res, i + j, i + j) == "]" then
							i = i + j
							break
						end
					end
				end
				colored = colored + 1
			elseif
				string.sub(res, i, i) == "[" --[[string.sub(res,i,i+5) =="[/font" or --]] and
					(string.sub(res, i, i + 6) == "[/color")
			 then
				if colored == 1 then
					result = result .. string.sub(res, i, i)
				else
					for j = 1, 50 do
						if string.sub(res, i + j, i + j) == "]" then
							i = i + j
							break
						end
					end
					if string.sub(res, i + 1, i + 6) == "[/font" then
						i = i + 1
						for j = 1, 50 do
							if string.sub(res, i + j, i + j) == "]" then
								i = i + j
								break
							end
						end
					end
				end
				colored = colored - 1
			else
				result = result .. string.sub(res, i, i)
			end
			i = i + 1
		end
	--result = res
	end
	return result
end

function remove_formatting983(text)
	text = string.gsub(text, "%[color=0,0,255%]", "")
	text = string.gsub(text, "%[color=0,128,192%]", "")
	text = string.gsub(text, "%[color=128,0,255%]", "")
	text = string.gsub(text, "%[color=255,128,0%]", "")
	text = string.gsub(text, "%[color=80,80,80%]", "")
	text = string.gsub(text, "%[color=0,128,0%]", "")
	text = string.gsub(text, "%[color=255,0,255%]", "")
	text = string.gsub(text, "%[img=luacom_bug%]", "")
	text = string.gsub(text, "%[/color%]", "")
	text = string.gsub(text, "%[font=default%-bold%]", "")
	text = string.gsub(text, "%[/font%]", "")
	if settings.global["luacom-indent-code"].value then
		text = string.gsub(text, "\n%s+", "\n")
	end
	return text
end

function print983(str)
	--game.players[1].print(str)
end
function find_difference983(current, cache)
	local lastletter = ""
	for i = 1, math.max(#current, #cache) do
		----print983(current:sub(i,i).." - "..cache:sub(i,i))
		if current:sub(i, i) ~= cache:sub(i, i) then
			--print983(#current >i)
			--print983("lastletter: "..lastletter)
			--print983("currentletter: "..current:sub(i,i))
			if
				lastletter == current:sub(i, i) or
					(#current > i and current:sub(i + 1, i + 1) == current:sub(i, i) and
						not (#current < #cache and cache:sub(i, i) ~= cache:sub(i + 1, i + 1))) or
					(#current < #cache and lastletter == cache:sub(i, i))
			 then --multiple letters after another
				--if lastletter == current:sub(i,i) then
				--	print983("(lastletter == current:sub(i,i))")
				--elseif (#current >i and current:sub(i+1,i+1) == current:sub(i,i)) then
				--	print983("1\""..current:sub(i,i).."\"")
				--	print983("2\""..current:sub(i+1,i+1).."\"")
				--	print983("(#current >i and current:sub(i+1,i+1) == current:sub(i,i))")
				--elseif (#current <#cache and lastletter == cache:sub(i,i)) then
				--	print983("(#current <#cache and lastletter == cache:sub(i,i))")
				--end
				----print983("lastletter, nextletter: \""..lastletter.."\" \""..current:sub(i,i).."\" \""..current:sub(i+1,i+1).."\"")
				local test3 = ""
				for a = math.max(1, i - 9), i + 9 do
					if current:sub(a, a) == "" then
						test3 = test3 .. "$"
					elseif current:sub(a, a) == "\n" then
						test3 = test3 .. "N"
					else
						test3 = test3 .. current:sub(a, a)
					end
					if #current < #cache then --backspace
						if a == i - 1 then
							test3 = test3 .. "|"
						end
					else
						if a == i then
							test3 = test3 .. "|"
						end
					end
				end
				--print983("cursor_pos: "..test3.. "  true")
				--print983("multiple letters after another:"..test3..current:sub(i,i+5))
				if #current < #cache then --backspace
					--print983("ret -1")
					return i - 1, true
				else
					--print983("ret 0")
					return i, true
				end
			else -- no dublicate chars
				--print983("cursor else")
				local test3 = ""
				for a = math.max(1, i - 9), i + 9 do
					if current:sub(a, a) == "" then
						test3 = test3 .. "$"
					elseif current:sub(a, a) == "\n" then
						test3 = test3 .. "N"
					else
						test3 = test3 .. current:sub(a, a)
					end
					if #current < #cache then --backspace
						if a == i - 1 then
							test3 = test3 .. "|"
						end
					else
						if a == i then
							test3 = test3 .. "|"
						end
					end
				end
				--print983("cache: "..cache:sub(i-12,i-1):gsub("\n","N").."["..cache:sub(i,i):gsub("\n","N").."]"..cache:sub(i+1,i+12):gsub("\n","N"))
				--print983("current: "..current:sub(i-12,i-1):gsub("\n","N").."["..current:sub(i,i):gsub("\n","N").."]"..current:sub(i+1,i+12):gsub("\n","N"))
				--print983("cursor_pos: "..test3.. "  false")
				--print983("returning: "..i)
				if #current < #cache then --backspace
					--print983("ret -1")
					return i - 1, false
				else
					--print983("ret 0")
					return i, false
				end
			end
		end
		lastletter = current:sub(i, i)
	end
	return nil
end
function find_difference_multi983(current, cache)
	--print983("multi")
	local lastletter = ""
	local mode
	local start
	local ende
	if #current < #cache then
		mode = 1
	else
		mode = -1
	end
	local i = 1
	local currentchar = 1
	local cachechar = 1
	while true do
		if mode == 1 then
			currentchar = i
			cachechar = i
			if currentchar > #current or cachechar > #cache then
				if #current < #cache then --backspace
					--print983("ret -1")
					return i - 1, true
				else
					--print983("ret 0")
					return i, true
				end
			end
		else
			currentchar = #current - i
			cachechar = #cache - i
			if currentchar == 0 or cachechar == 0 then
				if #current < #cache then --backspace
					--print983("ret -1")
					return 2, true
				else
					--print983("ret 0")
					return 1, true
				end
			end
		end
		----print983(current:sub(i,i).." - "..cache:sub(i,i))
		if current:sub(currentchar, currentchar) ~= cache:sub(cachechar, cachechar) then
			--print983(#current >i)
			--print983("lastletter: "..lastletter)
			--print983("currentletter: "..current:sub(i,i))
			if
				lastletter == current:sub(currentchar, currentchar) or
					(#current > currentchar and current:sub(currentchar + 1, currentchar + 1) == current:sub(currentchar, currentchar) and
						not (#current < #cache and cache:sub(cachechar, cachechar) ~= cache:sub(cachechar + 1, cachechar + 1))) or
					(#current < #cache and lastletter == cache:sub(cachechar, cachechar))
			 then --multiple letters after another
				--if lastletter == current:sub(i,i) then
				--	print983("(lastletter == current:sub(i,i))")
				--elseif (#current >i and current:sub(i+1,i+1) == current:sub(i,i)) then
				--	print983("1\""..current:sub(i,i).."\"")
				--	print983("2\""..current:sub(i+1,i+1).."\"")
				--	print983("(#current >i and current:sub(i+1,i+1) == current:sub(i,i))")
				--elseif (#current <#cache and lastletter == cache:sub(i,i)) then
				--	print983("(#current <#cache and lastletter == cache:sub(i,i))")
				--end
				----print983("lastletter, nextletter: \""..lastletter.."\" \""..current:sub(i,i).."\" \""..current:sub(i+1,i+1).."\"")
				local test3 = ""
				for a = math.max(1, i - 9), i + 9 do
					if current:sub(a, a) == "" then
						test3 = test3 .. "$"
					elseif current:sub(a, a) == "\n" then
						test3 = test3 .. "N"
					else
						test3 = test3 .. current:sub(a, a)
					end
					if #current < #cache then --backspace
						if a == i - 1 then
							test3 = test3 .. "|"
						end
					else
						if a == i then
							test3 = test3 .. "|"
						end
					end
				end
				--print983("cursor_pos: "..test3.. "  true")
				--print983("multiple letters after another:"..test3..current:sub(i,i+5))
				if #current < #cache then --backspace
					--print983("ret -1")
					return i - 1, true
				else
					--print983("ret 0")
					return i, true
				end
			else -- no dublicate chars
				--print983("cursor else")
				local test3 = ""
				for a = math.max(1, i - 9), i + 9 do
					if current:sub(a, a) == "" then
						test3 = test3 .. "$"
					elseif current:sub(a, a) == "\n" then
						test3 = test3 .. "N"
					else
						test3 = test3 .. current:sub(a, a)
					end
					if #current < #cache then --backspace
						if a == i - 1 then
							test3 = test3 .. "|"
						end
					else
						if a == i then
							test3 = test3 .. "|"
						end
					end
				end
				--print983("cache: "..cache:sub(i-12,i-1):gsub("\n","N").."["..cache:sub(i,i):gsub("\n","N").."]"..cache:sub(i+1,i+12):gsub("\n","N"))
				--print983("current: "..current:sub(i-12,i-1):gsub("\n","N").."["..current:sub(i,i):gsub("\n","N").."]"..current:sub(i+1,i+12):gsub("\n","N"))
				--print983("cursor_pos: "..test3.. "  false")
				--print983("returning: "..i)
				if #current < #cache then --backspace
					--print983("ret -1")
					return i - 1, false
				else
					--print983("ret 0")
					return i, false
				end
			end
		end
		lastletter = current:sub(i, i)
		i = i + 1
	end
	return nil
end
function select983(element, pos1, pos2)
	--print983(pos1.." - "..pos2)
	element.select(pos1, pos2)
end
script.on_event(
	defines.events.on_gui_text_changed,
	function(event)
		--print983("_______________________________")
		if event.element.name == "luacom3_code" then
			if not global.textboxes983 then
				global.textboxes983 = {}
			end
			if
				not event.element.parent.parent.parent.parent.parent.flow.luacom3_formatting.state or
					(not settings.global["luacom-indent-code"].value and
						not (settings.global["luacom-colorize-code"] and settings.global["luacom-colorize-code"].value))
			 then
				if not global.history983[event.element.parent.parent.parent.parent.parent.name] then
					global.history983[event.element.parent.parent.parent.parent.parent.name] = {event.element.text}
					global.historystate983[event.element.parent.parent.parent.parent.parent.name] = 1
				else
					insert_history983(event.element.parent.parent.parent.parent.parent, event.element.text)
				end
				global.textboxes983[event.element.parent.parent.parent.parent.parent.name] = event.element.text
				return
			end
			if not global.textboxes983[event.element.parent.parent.parent.parent.parent.name] then
				global.textboxes983[event.element.parent.parent.parent.parent.parent.name] = event.element.text
				if not global.history983[event.element.parent.parent.parent.parent.parent.name] then
					global.history983[event.element.parent.parent.parent.parent.parent.name] = {event.element.text}
					global.historystate983[event.element.parent.parent.parent.parent.parent.name] = 1
				end
			else
				local _, returns983 = event.element.text:gsub("\n", "")
				event.element.style.minimal_height =
					math.max(120, math.min(game.players[event.player_index].display_resolution.height * 0.4, returns983 * 20 + 40))
				local current = remove_colors983(event.element.text)
				local cache = remove_colors983(global.textboxes983[event.element.parent.parent.parent.parent.parent.name])
				local cursor, noupdate
				--if math.abs(#current-#cache) > 1 then
				--	cursor, noupdate=find_difference_multi983(current,cache)
				--else
				cursor, noupdate = find_difference983(current, cache)
				--end
				local updateanyway = false
				if cursor then
					local spacefinder = 0
					if settings.global["luacom-indent-code"].value then
						if #current < #cache then
							--print983("spacefinder: "..spacefinder.."\""..current:sub(cursor-spacefinder,cursor-spacefinder).."\"")
							while current:sub(cursor - spacefinder, cursor - spacefinder) == " " do
								spacefinder = spacefinder + 1
								--print983("spacefinder: "..spacefinder.."\""..current:sub(cursor-spacefinder,cursor-spacefinder).."\"")
							end
							if string.sub(current, cursor - spacefinder, cursor - spacefinder) == "\n" and (spacefinder + 1) % 3 == 0 then
								updateanyway = true
								current = current:sub(1, cursor - spacefinder - 1) .. current:sub(cursor + 1, -1)
								cursor = cursor - spacefinder - 1
							--print983("found an |n! \""..current:sub(1,cursor-spacefinder).."\"..\""..current:sub(cursor+1,-1).."\"")
							end
						end
						--remove whitespaces at the end

						--print983(spacefinder.."last-char:\""..string.sub(current,-1,-1).."\"")
						while string.sub(current, -1, -1) == " " and string.len(current) > cursor do
							current = string.sub(current, 1, -2)
							spacefinder = spacefinder + 1
							--print983(spacefinder.."last-char:\""..string.sub(current,-1,-1).."\"")
						end
					end
					--print983(format_code983(current).."\"")
					--if string.sub(current,1,-2) == cache or string.sub(cache,1,-2) ==  current then
					--	event.element.text = format_code983(event.element.text)
					--end
					--print983(updateanyway)
					--print983(#current.." + "..spacefinder.." - "..#cache)
					if current ~= cache and (not noupdate and not (math.abs(#current + spacefinder - #cache) > 1) or updateanyway) then
						event.element.text = format_code983(current)

						if (settings.global["luacom-colorize-code"] and settings.global["luacom-colorize-code"].value) then
							--print983("colorized")
							local formatted = format_code983(current)
							--print983("#formatted = "..#formatted)
							--print983("cursor: "..cursor)
							--print983("total current1 = "..(current:sub(1,cursor)):gsub("\n","N"):gsub("\r","R"))
							current = remove_formatting983(current:sub(1, cursor))
							--.."a"):sub(1,-2)
							--print983("total current = "..current:gsub("\n","N"):gsub("\r","R"))
							--print983(#formatted)
							local pointer = 1
							local pointer2 = 1
							--print983("lf \""..current:sub(pointer,pointer).."\"")
							local i = 1
							--local temp = ""
							while i <= #formatted do
								if
									string.sub(formatted, i, i) == "[" and
										(string.sub(formatted, i, i + 5) == "[font=" or string.sub(formatted, i, i + 6) == "[color=" or
											string.sub(formatted, i, i + 5) == "[/font" or
											string.sub(formatted, i, i + 6) == "[/color")
								 then
									--print983("tag found"..temp)
									--temp=i
									for j = 1, 25 do
										if string.sub(formatted, i + j, i + j) == "]" then
											i = i + j
											break
										end
									end
								elseif string.sub(formatted, i, i) == string.sub(current, pointer, pointer) then
									--temp=temp.."[color=green]"..string.sub(formatted,i,i).."[/color]"
									pointer = pointer + 1
									if pointer > #current then
										pointer2 = i
										break
									end
								--else
								--	temp=temp.."[color=red]"..string.sub(formatted,i,i).."[/color]"
								end
								i = i + 1
							end
							--print983(temp)
							--print983(formatted:sub(pointer2-25,pointer2):gsub("\n","N").."|"..formatted:sub(pointer2,pointer2+25):gsub("\n","N"))
							--print983("lf \""..current:sub(pointer,pointer).."\" "..pointer)
							--formatted = formatted:gsub("\n","N")
							--print983("pointer \""..current:sub(pointer-10,pointer):gsub("\n","N").."|"..current:sub(pointer+1,pointer+10):gsub("\n","N").."\"")
							--print983("\""..string.sub(formatted,pointer2,pointer2):gsub("\n","N").."\"")
							if settings.global["luacom-indent-code"].value then
								if string.sub(formatted, pointer2, pointer2) == "\n" then
									while string.sub(formatted, pointer2 + 1, pointer2 + 1) == " " do
										pointer2 = pointer2 + 1
										--print983("\""..string.sub(formatted,pointer2,pointer2).."\"")
									end
								end
							end
							select983(event.element, pointer2 + 1, pointer2)
						elseif settings.global["luacom-indent-code"].value then
							local fillerchar = current:sub(cursor + 1, cursor + 1)
							--if fillerchar == "\n" then
							fillerchar = " "
							--end
							--print983("fillerchar: \""..fillerchar.."\"")
							--print983(current:sub(cursor-19,cursor)..fillerchar.."cursor983"..fillerchar..current:sub(cursor+1,cursor+19))
							current = current:sub(1, cursor) .. fillerchar .. "cursor983" .. fillerchar .. current:sub(cursor + 1, -1)
							current = format_code983(current)
							cursor = current:find(fillerchar .. "cursor983" .. fillerchar)
							select983(event.element, cursor, cursor - 1)
						--print983(current:sub(cursor-39,cursor)..current:sub(cursor+1,cursor+59))
						--print983("result 1")
						end
					elseif not noupdate and cursor == #cache + 1 then
						--print983("result 6")
						event.element.text = format_code983(event.element.text)
					else
						--print983("result 7")
						--print983("noupdate")
					end
				end
				if not global.history983[event.element.parent.parent.parent.parent.parent.name] then
					global.history983[event.element.parent.parent.parent.parent.parent.name] = {event.element.text}
					global.historystate983[event.element.parent.parent.parent.parent.parent.name] = 1
				else
					insert_history983(event.element.parent.parent.parent.parent.parent, event.element.text)
				end
				global.textboxes983[event.element.parent.parent.parent.parent.parent.name] = event.element.text
			end
		end
		combinator_event(event)
	end
)

function insert_history983(gui, code)
	local gui_name = gui
	if type(gui) ~= "string" then
		gui_name = gui.name
	end
	local i = global.historystate983[gui_name]
	if #global.history983[gui_name] == global.historystate983[gui_name] then
		i = i + 1
		table.insert(global.history983[gui_name], code)
		global.historystate983[gui_name] = i
	else
		i = i + 1
		global.history983[gui_name][i] = code
		global.historystate983[gui_name] = i
		for a = i + 1, #global.history983[gui_name] do
			global.history983[gui_name][a] = nil
		end
	end
	if i > 500 then
		i = i - 1
		table.remove(global.history983[gui_name], 1)
		global.historystate983[gui_name] = i
	end
	if type(gui) ~= "string" then
		if global.history983[gui_name][i - 1] then
			gui.flow.luacom3_back.sprite = "luacom_back_enabled"
			gui.flow.luacom3_back.ignored_by_interaction = false
		else
			gui.flow.luacom3_back.sprite = "luacom_back"
			gui.flow.luacom3_back.ignored_by_interaction = true
		end
		if global.history983[gui_name][i + 1] then
			gui.flow.luacom3_forward.sprite = "luacom_forward_enabled"
			gui.flow.luacom3_forward.ignored_by_interaction = false
		else
			gui.flow.luacom3_forward.sprite = "luacom_forward"
			gui.flow.luacom3_forward.ignored_by_interaction = true
		end
	end
end
on_built_entity983 = function(event)
	if event.creeated_entity.valid and event.created_entity.name == "loading-limiter" then
		global.counter983 = global.counter983 + 1
		global.combinators983[event.created_entity.unit_number] = {
			["formatting"] = true,
			["entity"] = event.created_entity,
			["code"] = "",
			["func"] = nil,
			["variables"] = {},
			["errors"] = "",
			["errors2"] = "",
			["output"] = {},
			["next_tick"] = 1,
			["last_user"] = event.created_entity.last_user.index,
			number = global.counter983
		}
		if string.sub(game.active_mods["base"], 1, 4) == "0.16" then
			global.combinators983[event.created_entity.unit_number].code =
				"--hi, maybe don't remove this line because it disappears when you hit the line limit :)\n"
		end
		local blueprint_data983 =
			event.created_entity.surface.find_entities_filtered {
			position = event.created_entity.position,
			ghost_name = "luacom_blueprint_data"
		}
		if blueprint_data983[1] then
			global.combinators983[event.created_entity.unit_number]["code"] = read_from_combinator(blueprint_data983[1])
			blueprint_data983[1].destroy()
			global.combinators983[event.created_entity.unit_number].blueprint_data =
				event.created_entity.surface.create_entity {
				name = "luacom_blueprint_data",
				position = event.created_entity.position,
				force = event.created_entity.force
			}
			global.combinators983[event.created_entity.unit_number].blueprint_data.destructible = false
			global.combinators983[event.created_entity.unit_number].blueprint_data.minable = false
			load_code983(
				global.combinators983[event.created_entity.unit_number]["code"],
				event.created_entity.unit_number,
				event
			)
		else
			global.combinators983[event.created_entity.unit_number].blueprint_data =
				event.created_entity.surface.create_entity {
				name = "luacom_blueprint_data",
				position = event.created_entity.position,
				force = event.created_entity.force
			}
			global.combinators983[event.created_entity.unit_number].blueprint_data.destructible = false
			global.combinators983[event.created_entity.unit_number].blueprint_data.minable = false
		end
		write_to_combinator(
			global.combinators983[event.created_entity.unit_number].blueprint_data,
			global.combinators983[event.created_entity.unit_number]["code"]
		)
	end
	combinator_event(event)
end
script.on_event(defines.events.on_built_entity, on_built_entity983)
script.on_event(defines.events.on_robot_built_entity, on_built_entity983)

script.on_event(
	defines.events.script_raised_revive,
	function(event)
		local e = {name = event.name, tick = event.tick, created_entity = event.entity}
		on_built_entity983(e)
	end
)

script.on_event(
	defines.events.on_tick,
	function(event)
		for unit_nr983, gui983 in pairs(global.guis983) do
			if
				(not global.combinators983[unit_nr983]) or (not global.combinators983[unit_nr983].entity.valid) or
					(not gui983.valid)
			 then
				gui983.destroy()
				global.guis983[unit_nr983] = nil
			else
				if gui983.main_table.flow then
					gui983.main_table.flow.clear()
				end
				local com983 = global.combinators983[unit_nr983]["entity"]

				local red, green = get_networks(com983, global.combinators983[unit_nr983].output)
				for sig983, val983 in pairs(red) do
					local cap =
						gui983.main_table.flow.add {type = "label", name = "red_" .. sig983, caption = sig983 .. "= " .. val983}
					cap.style.font_color = {r = 1, g = 0.3, b = 0.3}
				end
				for sig983, val983 in pairs(green) do
					local cap =
						gui983.main_table.flow.add {type = "label", name = "green_" .. sig983, caption = sig983 .. "= " .. val983}
					cap.style.font_color = {r = 0.3, g = 1, b = 0.3}
				end
				gui983.main_table.left_table.under_text.errors.caption =
					(global.combinators983[unit_nr983]["errors"] or "") .. (global.combinators983[unit_nr983]["errors2"] or "")
			end
		end

		for unit_nr983, tbl983 in pairs(global.combinators983) do
			if not tbl983.entity or not tbl983.entity.valid then
				destroy_combinator983(unit_nr983)
			else
				--if event.tick >= tbl983.next_tick then
				--	combinator_tick983(unit_nr983)
				--end
				if event.tick % 600 == 0 and tbl983.errors .. tbl983.errors2 ~= "" then
					for _, player in pairs(game.players) do
						player.add_custom_alert(
							tbl983.entity,
							{type = "virtual", name = "luacom_error"},
							"LuaCombinator Error: " .. tbl983.errors .. tbl983.errors2,
							true
						)
					end
				end
			end
		end
		combinator_event(event)
		combinator_on_nth_tick(event)
	end
)

function combinator_tick983(unit_nr983) -- unused
	local tick = game.tick
	local tbl983 = global.combinators983[unit_nr983]

	delay = 1
	--game.players[1].--print(tbl983.code)
	output = tbl983.output
	local copiedoutput = luacom_deepcopy(output)
	var = tbl983.variables
	rednet = {}
	rednet.mt = {}
	greennet = {}
	greennet.mt = {}
	rednet.mt.__index = function(table, key)
		rednet = get_red_network(tbl983.entity, copiedoutput)
		return rednet[key]
	end
	rednet.mt.__pairs = function(tbl)
		rednet = get_red_network(tbl983.entity, copiedoutput)
		tbl = rednet
		local function stateless_iter(tbl, k)
			local v
			k, v = next(tbl, k)
			if v then
				return k, v
			end
		end

		-- Return an iterator function, the table, starting point
		return stateless_iter, tbl, nil
	end
	greennet.mt.__index = function(table, key)
		greennet = get_green_network(tbl983.entity, copiedoutput)
		return greennet[key]
	end
	greennet.mt.__pairs = function(tbl)
		greennet = get_green_network(tbl983.entity, copiedoutput)
		tbl = greennet
		local function stateless_iter(tbl, k)
			local v
			k, v = next(tbl, k)
			if v then
				return k, v
			end
		end

		-- Return an iterator function, the table, starting point
		return stateless_iter, tbl, nil
	end
	setmetatable(rednet, rednet.mt)
	setmetatable(greennet, greennet.mt)

	--if tbl983.usered then
	--	rednet = get_red_network(tbl983.entity,output)
	--end
	--if tbl983.usegreen then
	--	greennet = get_green_network(tbl983.entity,output)
	--end
	combinator = tbl983.entity
	if tbl983.func then
		--local temp983 = string.gsub(tbl983.code, "\n", " ")
		--temp983 = string.gsub(temp983, "%s+", " ")
		--local _, count983 = string.gsub(temp983, "while true", "")
		--if count983 > 0 then
		--	tbl983.errors="pls dont.."
		--else
		local _, error983 = pcall(tbl983.func)
		if error983 then
			tbl983.errors = error983
		else
			tbl983.errors = ""
		end
	--end
	end
	if output and not (type(output) == "table") then
		tbl983.errors = tbl983.errors .. "  +++output needs to be a table"
	else
		tbl983.output = output or {}
	end

	tbl983.variables = var or {}
	if compare_tables983(copiedoutput, output) then
		local actual_output983 = {}
		local i983 = 1
		tbl983.errors2 = ""
		for signal983, value983 in pairs(tbl983.output) do
			if global.signals983[signal983] then
				if type(value983) == "number" then
					if value983 >= -2147483648 and value983 <= 2147483647 then
						actual_output983[i983] = {
							signal = {type = global.signals983[signal983], name = signal983},
							count = (tonumber(value983) or 0),
							index = i983
						}
						i983 = i983 + 1
					else
						tbl983.errors2 =
							tbl983.errors2 .. "  +++output value must be between -2147483648 and 2147483647 (" .. signal983 .. ")"
					end
				else
					tbl983.errors2 = tbl983.errors2 .. "  +++output value must be a number (" .. signal983 .. ")"
				end
			else
				tbl983.errors2 = tbl983.errors2 .. "  +++invalid signal name in output (" .. signal983 .. ")"
			end
		end
		if tbl983.errors .. tbl983.errors2 ~= "" then
			for _, player in pairs(game.players) do
				player.add_custom_alert(
					tbl983.entity,
					{type = "virtual", name = "luacom_error"},
					"LuaCombinator Error: " .. tbl983.errors .. tbl983.errors2,
					true
				)
			end
		end
		if not combinator or not combinator.valid then
			global.combinators983[unit_nr983] = nil
		else
			local control983 = tbl983.entity.get_or_create_control_behavior()
			control983.parameters = {parameters = actual_output983}
		end
	end
	tbl983.next_tick = tick + (tonumber(delay) or 0)
	if tbl983.errors2 ~= "" or tbl983.errors ~= "" then
		game.players[tbl983.last_user].print("[" .. tbl983.number .. "] " .. tbl983.errors .. tbl983.errors2)
	end
end

function compare_tables983(t1, t2)
	local i1 = 0
	local i2 = 0
	for _ in pairs(t1) do
		i1 = i1 + 1
	end
	for key, value in pairs(t2) do
		if t1[key] ~= t2[key] then
			return true
		end
		i2 = i2 + 1
	end
	if i2 ~= i1 then
		return true
	end
	return false
end

function get_red_network(entity, output)
	local red = entity.get_control_behavior().get_circuit_network(defines.wire_type.red)
	local ret_red = {}
	if red and red.signals then
		local tempsignals983 = red.signals --luacom_deepcopy
		for _, tbl983 in pairs(tempsignals983) do
			local name983 = tbl983.signal.name
			ret_red[name983] = tbl983.count - math.floor(output[name983] or 0)
			if ret_red[name983] == 0 then
				ret_red[name983] = nil
			end
		end
	end
	return ret_red
end

function get_green_network(entity, output)
	local green = entity.get_control_behavior().get_circuit_network(defines.wire_type.green)
	local ret_green = {}
	if green and green.signals then
		local tempsignals983 = green.signals --luacom_deepcopy
		for _, tbl983 in pairs(tempsignals983) do
			local name983 = tbl983.signal.name
			ret_green[name983] = tbl983.count - math.floor(output[name983] or 0)
			if ret_green[name983] == 0 then
				ret_green[name983] = nil
			end
		end
	end
	return ret_green
end

function get_networks(entity, output)
	local green = entity.get_control_behavior().get_circuit_network(defines.wire_type.green)
	local red = entity.get_control_behavior().get_circuit_network(defines.wire_type.red)
	local ret_red = {}
	local ret_green = {}
	if green and green.signals then
		for _, tbl983 in pairs(green.signals) do
			local name983 = tbl983.signal.name
			ret_green[name983] = tbl983.count - math.floor(output[name983] or 0)
			if ret_green[name983] == 0 then
				ret_green[name983] = nil
			end
		end
	end
	if red and red.signals then
		for _, tbl983 in pairs(red.signals) do
			local name983 = tbl983.signal.name
			ret_red[name983] = tbl983.count - math.floor(output[name983] or 0)
			if ret_red[name983] == 0 then
				ret_red[name983] = nil
			end
		end
	end
	return ret_red, ret_green
end

script.on_event(
	defines.events.on_gui_opened,
	function(event)
		if not event.entity then
			return
		end
		local player = game.players[event.player_index]
		if player.opened ~= nil and player.opened.name == "loading-limiter" then
			local ent = player.opened
			player.opened = nil
			if player.gui.center["luacom3_gui_" .. ent.unit_number] then
				player.gui.center["luacom3_gui_" .. ent.unit_number].destroy()
			end
			create_gui(player, ent)
		end
		combinator_event(event)
	end
)

function create_gui(player, entity)
	local gui =
		player.gui.center.add {
		type = "frame",
		name = "luacom3_gui_" .. entity.unit_number,
		caption = "",
		direction = "vertical"
	}
	gui.caption =
		"[" ..
		global.combinators983[entity.unit_number].number .. "] combinator, rednet[], greennet[], var[], output[], delay"
	gui.style.top_padding = 1
	gui.style.right_padding = 4
	gui.style.bottom_padding = 4
	gui.style.left_padding = 4
	--gui.style.scaleable 		= false
	gui.add {type = "flow", name = "flow", direction = "horizontal"}
	gui.flow.style.width = 799
	local elem = gui.flow.add {type = "sprite-button", name = "luacom3_x_" .. entity.unit_number, direction = "horizontal"}
	elem.style.height = 20
	elem.style.width = 20
	elem.style.top_padding = 0
	elem.style.bottom_padding = 0
	elem.style.left_padding = 0
	elem.style.right_padding = 0
	--elem.style.disabled_font_color ={r=1,g=1,b=1}
	elem.sprite = "luacom_close"
	elem = gui.flow.add {type = "sprite-button", name = "luacom3_help", direction = "horizontal"}
	elem.style.height = 20
	elem.style.width = 20
	elem.style.top_padding = 0
	elem.style.bottom_padding = 0
	elem.style.left_padding = 0
	elem.style.right_padding = 0
	elem.sprite = "luacom_questionmark"
	elem = gui.flow.add {type = "flow", name = "flow1", direction = "horizontal"}
	elem.style.width = 15
	elem = gui.flow.add {type = "sprite-button", name = "luacom3_back", state = true}
	elem.style.height = 20
	elem.style.width = 20
	elem.style.top_padding = 0
	elem.style.bottom_padding = 0
	elem.style.left_padding = 0
	elem.style.right_padding = 0
	elem.sprite = "luacom_back"
	elem.hovered_sprite = "luacom_back"
	elem.clicked_sprite = "luacom_back"
	elem = gui.flow.add {type = "sprite-button", name = "luacom3_forward", state = true}
	elem.style.height = 20
	elem.style.width = 20
	elem.style.top_padding = 0
	elem.style.bottom_padding = 0
	elem.style.left_padding = 0
	elem.style.right_padding = 0
	elem.sprite = "luacom_forward"
	elem.hovered_sprite = "luacom_forward"
	elem.clicked_sprite = "luacom_forward"
	elem = gui.flow.add {type = "checkbox", name = "luacom3_formatting", state = true}
	elem.tooltip = "Toggle code formatting"
	elem.style.height = 18
	elem.style.width = 18
	elem.state = global.combinators983[entity.unit_number].formatting
	elem = gui.flow.add {type = "flow", name = "flow2", direction = "horizontal"}
	--elem.style.width=95
	elem.style.horizontally_stretchable = true
	for i = 0, 20 do
		elem = gui.flow.add {type = "button", name = "luacom3_preset_" .. i, direction = "horizontal", caption = i}
		elem.style.height = 20
		elem.style.width = 27
		elem.style.top_padding = 0
		elem.style.bottom_padding = 0
		elem.style.left_padding = 0
		elem.style.right_padding = 0
		if string.sub(game.active_mods["base"], 1, 4) == "0.16" then
			elem.style.vertical_align = "top"
			elem.style.align = "center"
			elem.style.height = 23
			elem.style.width = 23
			elem.style.font = "default-bold"
			elem.style.font_color = {r = 1, g = 1, b = 1}
			elem.style.hovered_font_color = {r = 1, g = 1, b = 1}
		end
		if not global.presets983[i + 1] then
			if string.sub(game.active_mods["base"], 1, 4) == "0.16" then
				elem.style.font_color = {r = 0.5, g = 0.5, b = 0.5}
				elem.style.hovered_font_color = {r = 0.5, g = 0.5, b = 0.5}
			else
				elem.style.font_color = {r = 0.3, g = 0.3, b = 0.3}
				elem.style.hovered_font_color = {r = 0.3, g = 0.3, b = 0.3}
			end
		else
			elem.tooltip = global.presets983[i + 1]
		end
	end
	elem = gui.add {type = "table", column_count = 2, name = "main_table", direction = "vertical"}
	elem.style.vertical_align = "top"
	elem = gui.main_table.add {type = "flow", column_count = 1, name = "left_table", direction = "vertical"}
	elem.style.vertical_align = "top"
	--elem.style.vertically_stretchable = true
	--elem.style.vertically_squashable = false
	elem = gui.main_table.left_table.add {type = "scroll-pane", name = "code_scroll", direction = "vertical"}
	--elem.style.vertically_stretchable = true
	--elem.style.vertically_squashable = false
	elem.style.maximal_height = 700
	elem =
		gui.main_table.left_table.code_scroll.add {
		type = "table",
		column_count = 1,
		name = "code_table",
		direction = "vertical"
	}
	--elem.style.vertically_stretchable = true
	--elem.style.vertically_squashable = false
	elem =
		gui.main_table.left_table.code_scroll.code_table.add {
		type = "text-box",
		name = "luacom3_code",
		direction = "vertical"
	}
	elem.style.vertically_stretchable = true
	--elem.style.vertically_squashable = false
	elem.style.width = 900
	elem.style.minimal_height = 80
	if global.combinators983[entity.unit_number].formatting then
		elem.text = format_code983(global.combinators983[entity.unit_number].code)
	else
		elem.text = global.combinators983[entity.unit_number].code
	end
	if global.combinators983[entity.unit_number]["errors"] and global.combinators983[entity.unit_number]["errors"] ~= "" then
		local test = string.gsub(global.combinators983[entity.unit_number]["errors"], ".+:(%d+):.+", "%1")
		elem.text = insert_error_icon983(elem.text, test)
	else
		elem.text = insert_error_icon983(elem.text)
	end
	global.textboxes983[gui.name] = elem.text
	if not global.history983[gui.name] then
		global.history983[gui.name] = {elem.text}
		global.historystate983[gui.name] = 1
	end
	local _, returns983 = elem.text:gsub("\n", "")
	elem.style.minimal_height = math.max(120, math.min(player.display_resolution.height * 0.4, returns983 * 20 + 40))
	elem = gui.main_table.add {type = "scroll-pane", name = "flow", direction = "vertical"}
	elem.style.maximal_height = 700
	gui.main_table.left_table.add {type = "table", column_count = 2, name = "under_text", direction = "vertical"}
	gui.main_table.left_table.under_text.style.width = 800
	gui.main_table.left_table.under_text.add {type = "label", name = "errors", direction = "horizontal"}
	gui.main_table.left_table.under_text.errors.style.width = 760
	elem =
		gui.main_table.left_table.under_text.add {
		type = "button",
		name = "luacom3_ok_" .. entity.unit_number,
		direction = "horizontal",
		caption = "ok"
	}
	elem.style.width = 35
	elem.style.height = 30
	elem.style.top_padding = 0
	elem.style.left_padding = 0
	local i = global.historystate983[gui.name]
	if global.history983[gui.name][i - 1] then
		gui.flow.luacom3_back.sprite = "luacom_back_enabled"
		gui.flow.luacom3_back.ignored_by_interaction = false
	else
		gui.flow.luacom3_back.sprite = "luacom_back"
		gui.flow.luacom3_back.ignored_by_interaction = true
	end
	if global.history983[gui.name][i + 1] then
		gui.flow.luacom3_forward.sprite = "luacom_forward_enabled"
		gui.flow.luacom3_forward.ignored_by_interaction = false
	else
		gui.flow.luacom3_forward.sprite = "luacom_forward"
		gui.flow.luacom3_forward.ignored_by_interaction = true
	end
	global.guis983[entity.unit_number] = gui
	player.opened = gui
end

function helper_gui(pl)
	local player = game.players[pl]
	if not player.gui.center["luacom3_helper_" .. pl] then
		local gui =
			player.gui.center.add {type = "frame", name = "luacom3_helper_" .. pl, caption = "", direction = "vertical"}
		local elem = gui.add {type = "sprite-button", name = "luacom3_helper_x", direction = "horizontal"}
		elem.style.height = 20
		elem.style.width = 20
		elem.style.top_padding = 0
		elem.style.bottom_padding = 0
		elem.style.left_padding = 0
		elem.style.right_padding = 0
		elem.sprite = "luacom_close"
		gui.add {
			type = "label",
			name = "1",
			direction = "horizontal",
			caption = "Here are a few variables to get you started:"
		}
		gui.add {
			type = "label",
			name = "2",
			direction = "horizontal",
			caption = "combinator = the entity the script is running on"
		}
		gui.add {
			type = "label",
			name = "3",
			direction = "horizontal",
			caption = "rednet [] = signals in the red network (read only) (Signal-name -> Value)"
		}
		gui.add {type = "label", name = "4", direction = "horizontal", caption = "greennet [] = same for the green network"}
		gui.add {
			type = "label",
			name = "5",
			direction = "horizontal",
			caption = "output [] = a table with all the signals you are sending to the networks, they are permanent so to remove a signal you need to "
		}
		gui.add {
			type = "label",
			name = "6",
			direction = "horizontal",
			caption = "                    set its entry to nil, or flush all signals by entering output = {} (creates a fresh table) (Signal-name -> Value)"
		}
		gui.add {
			type = "label",
			name = "7",
			direction = "horizontal",
			caption = "var [] = a table to store all your variables between the ticks"
		}
		gui.add {
			type = "label",
			name = "8",
			direction = "horizontal",
			caption = "delay = the delay in ticks until the next on_tick update (to save some ups) (not persistent, needs to be set on each update)"
		}
		gui.add {type = "label", name = "9", direction = "horizontal", caption = " "}
		gui.add {type = "label", name = "10", direction = "horizontal", caption = "Presets:"}
		gui.add {type = "label", name = "11", direction = "horizontal", caption = "Save & Load with left-click"}
		gui.add {type = "label", name = "12", direction = "horizontal", caption = "Delete with right-click"}
		gui.add {type = "label", name = "13", direction = "horizontal", caption = " "}
		gui.add {type = "label", name = "14", direction = "horizontal", caption = "Events:"}
		gui.add {
			type = "label",
			name = "15",
			direction = "horizontal",
			caption = "You can use any event except on_init and on_load... For example:"
		}
		gui.add {
			type = "label",
			name = "16",
			direction = "horizontal",
			caption = "on_nth_tick[7] = function (event) ... (on_nth_tick has this quite special syntax)"
		}
		gui.add {
			type = "label",
			name = "17",
			direction = "horizontal",
			caption = "The combinator basically executes your code once and registers your 'event variables' to the corresponding events"
		}
	end
end

function insert_error_icon983(text, errorline)
	text = string.gsub(text, "%[img=luacom_bug%]", "")
	if errorline then
		errorline = tonumber(errorline)
		local _, linecount = text:gsub("([^\n]*)\n?", "")
		local lines = linecount
		local last_indent = 0
		if string.sub(text, -1) == "\n" then
			lines = linecount + 1
		end
		local last_line = ""
		local count
		local i = 0
		local result = ""
		for line in text:gmatch("([^\n]*)\n?") do
			i = i + 1
			if i < lines then
				last_line = line
				last_indent = indent
				if i == errorline then
					line = "[img=luacom_bug]" .. line
				end
				if i > 1 then
					line = "\n" .. line
				end
				result = result .. line
			end
		end
		return result
	else
		return text
	end
end

function history983(gui, interval)
	local gui_name = gui.name
	local i = math.min(#global.history983[gui_name], math.max(1, global.historystate983[gui_name] + interval))
	global.historystate983[gui_name] = i
	if gui.flow.luacom3_formatting.state then
		gui.main_table.left_table.code_scroll.code_table.luacom3_code.text = format_code983(global.history983[gui_name][i])
	else
		gui.main_table.left_table.code_scroll.code_table.luacom3_code.text = remove_colors983(global.history983[gui_name][i])
	end
	if global.history983[gui_name][i - 1] then
		gui.flow.luacom3_back.sprite = "luacom_back_enabled"
		gui.flow.luacom3_back.ignored_by_interaction = false
	else
		gui.flow.luacom3_back.sprite = "luacom_back"
		gui.flow.luacom3_back.ignored_by_interaction = true
	end
	if global.history983[gui_name][i + 1] then
		gui.flow.luacom3_forward.sprite = "luacom_forward_enabled"
		gui.flow.luacom3_forward.ignored_by_interaction = false
	else
		gui.flow.luacom3_forward.sprite = "luacom_forward"
		gui.flow.luacom3_forward.ignored_by_interaction = true
	end
	global.textboxes983[gui_name] = gui.main_table.left_table.code_scroll.code_table.luacom3_code.text
end

script.on_event(
	defines.events.on_gui_click,
	function(event)
		if string.sub(event.element.name, 1, 11) == "luacom3_ok_" then
			local code = event.element.parent.parent.code_scroll.code_table.luacom3_code.text
			local combinator = tonumber(string.sub(event.element.name, 12))
			global.combinators983[combinator].last_user = event.player_index
			load_code983(code, combinator, event)
			if global.combinators983[combinator]["errors"] and global.combinators983[combinator]["errors"] ~= "" then
				local test = string.gsub(global.combinators983[combinator]["errors"], ".+:(%d+):.+", "%1")
				event.element.parent.parent.code_scroll.code_table.luacom3_code.text = insert_error_icon983(code, test)
			else
				--combinator_tick983(combinator)
				event.element.parent.parent.code_scroll.code_table.luacom3_code.text = insert_error_icon983(code)
			end
		elseif string.sub(event.element.name, 1, 10) == "luacom3_x_" then
			global.guis983[tonumber(string.sub(event.element.name, 11))] = nil
			event.element.parent.parent.destroy()
		elseif (event.element.name == "luacom3_help") then
			helper_gui(event.player_index)
		elseif (event.element.name == "luacom3_helper_x") then
			event.element.parent.destroy()
		elseif string.sub(event.element.name, 1, 15) == "luacom3_preset_" then
			local id = tonumber(string.sub(event.element.name, 16)) + 1
			local combinator = tonumber(string.sub(event.element.parent.parent.name, 13))
			if event.button == defines.mouse_button_type.left then
				if global.presets983[id] then
					if event.element.parent.luacom3_formatting.state then
						event.element.parent.parent.main_table.left_table.code_scroll.code_table.luacom3_code.text =
							format_code983(global.presets983[id])
					else
						event.element.parent.parent.main_table.left_table.code_scroll.code_table.luacom3_code.text = global.presets983[id]
					end
					global.textboxes983[event.element.parent.parent.name] =
						event.element.parent.parent.main_table.left_table.code_scroll.code_table.luacom3_code.text
					if not global.history983[event.element.parent.parent.name] then
						global.history983[event.element.parent.parent.name] = {
							event.element.parent.parent.main_table.left_table.code_scroll.code_table.luacom3_code.text
						}
						global.historystate983[event.element.parent.parent.name] = 1
					else
						insert_history983(
							event.element.parent.parent,
							event.element.parent.parent.main_table.left_table.code_scroll.code_table.luacom3_code.text
						)
					end
				else
					global.presets983[id] =
						remove_colors983(event.element.parent.parent.main_table.left_table.code_scroll.code_table.luacom3_code.text)
					if string.sub(game.active_mods["base"], 1, 4) == "0.16" then
						event.element.style.font_color = {r = 1, g = 1, b = 1}
						event.element.style.hovered_font_color = {r = 1, g = 1, b = 1}
					else
						event.element.style.font_color = {r = 0, g = 0, b = 0}
						event.element.style.hovered_font_color = {r = 0, g = 0, b = 0}
					end
					event.element.tooltip = global.presets983[id]
				end
			elseif event.button == defines.mouse_button_type.right then
				global.presets983[id] = nil
				if string.sub(game.active_mods["base"], 1, 4) == "0.16" then
					event.element.style.font_color = {r = 0.5, g = 0.5, b = 0.5}
					event.element.style.hovered_font_color = {r = 0.5, g = 0.5, b = 0.5}
				else
					event.element.style.font_color = {r = 0.3, g = 0.3, b = 0.3}
					event.element.style.hovered_font_color = {r = 0.3, g = 0.3, b = 0.3}
				end
				event.element.tooltip = ""
			end
		elseif event.element.name == "luacom3_formatting" then
			if event.button == defines.mouse_button_type.left then
				if event.element.state == true then
					event.element.parent.parent.main_table.left_table.code_scroll.code_table.luacom3_code.text =
						format_code983(event.element.parent.parent.main_table.left_table.code_scroll.code_table.luacom3_code.text)
				else
					event.element.parent.parent.main_table.left_table.code_scroll.code_table.luacom3_code.text =
						remove_colors983(event.element.parent.parent.main_table.left_table.code_scroll.code_table.luacom3_code.text)
				end
				local combinator = tonumber(string.sub(event.element.parent.parent.name, 13))
				global.combinators983[combinator].formatting = event.element.state
			end
		elseif event.element.name == "luacom3_back" then
			if event.button == defines.mouse_button_type.left and event.shift then
				history983(event.element.parent.parent, -50)
			elseif event.button == defines.mouse_button_type.right then
				history983(event.element.parent.parent, -5)
			else
				history983(event.element.parent.parent, -1)
			end
		elseif event.element.name == "luacom3_forward" then
			if event.button == defines.mouse_button_type.left and event.shift then
				history983(event.element.parent.parent, 50)
			elseif event.button == defines.mouse_button_type.right then
				history983(event.element.parent.parent, 5)
			else
				history983(event.element.parent.parent, 1)
			end
		end
		if not event.element then
			return
		end
		combinator_event(event)
	end
)
script.on_event(
	{defines.events.on_gui_closed},
	function(event)
		if event.element and string.sub(event.element.name, 1, 12) == "luacom3_gui_" then
			global.guis983[tonumber(string.sub(event.element.name, 13))] = nil
			event.element.destroy()
		end
		combinator_event(event)
	end
)

function luacom_deepcopy(orig)
	local orig_type = type(orig)
	local copy
	if orig_type == "table" then
		copy = {}
		for orig_key, orig_value in next, orig, nil do
			copy[luacom_deepcopy(orig_key)] = luacom_deepcopy(orig_value)
		end
		setmetatable(copy, luacom_deepcopy(getmetatable(orig)))
	else -- number, string, boolean, etc
		copy = orig
	end
	return copy
end

script.on_event(
	defines.events.on_entity_settings_pasted,
	function(event)
		if event.source.name == "loading-limiter" and event.destination.name == "loading-limiter" then
			global.combinators983[event.destination.unit_number].code = global.combinators983[event.source.unit_number].code
			global.combinators983[event.destination.unit_number].variables =
				luacom_deepcopy(global.combinators983[event.source.unit_number].variables)
			global.combinators983[event.destination.unit_number].errors2 =
				global.combinators983[event.source.unit_number].errors2
			global.combinators983[event.destination.unit_number].output =
				luacom_deepcopy(global.combinators983[event.source.unit_number].output)
			global.combinators983[event.destination.unit_number].next_tick =
				global.combinators983[event.source.unit_number].next_tick
			if not global.textboxes983["luacom3_gui_" .. event.destination.unit_number] then
				global.textboxes983["luacom3_gui_" .. event.destination.unit_number] =
					global.combinators983[event.source.unit_number].code
			end
			if not global.history983["luacom3_gui_" .. event.destination.unit_number] then
				global.history983["luacom3_gui_" .. event.destination.unit_number] = {
					global.combinators983[event.source.unit_number].code
				}
				global.historystate983["luacom3_gui_" .. event.destination.unit_number] = 1
			else
				insert_history983(
					"luacom3_gui_" .. event.destination.unit_number,
					global.combinators983[event.source.unit_number].code
				)
			end
			load_code983(global.combinators983[event.destination.unit_number]["code"], event.destination.unit_number, event)
			--global.combinators983[event.destination.unit_number]["func"],global.combinators983[event.destination.unit_number]["errors"] = load(global.combinators983[event.destination.unit_number]["code"])
			--if not global.combinators983[event.destination.unit_number]["errors"] then
			--	global.combinators983[event.destination.unit_number]["errors"] = ""
			--end
			global.combinators983[event.destination.unit_number].last_user = event.player_index
			global.combinators983[event.destination.unit_number].formatting =
				global.combinators983[event.source.unit_number].formatting
		--write_to_combinator(global.combinators983[event.destination.unit_number].blueprint_data,global.combinators983[event.destination.unit_number].code)
		end
		combinator_event(event)
	end
)

function load_code983(code, id983, e983)
	local test = remove_colors983(code)
	global.combinators983[id983].next_tick = 0
	global.combinators983[id983]["code"] = (test or "")
	global.combinators983[id983]["func"], global.combinators983[id983]["errors"] =
		load(global.combinators983[id983]["code"])
	if not global.combinators983[id983]["errors"] then
		global.combinators983[id983]["errors"] = ""
	end
	global.combinators983[id983]["errors2"] = ""

	write_to_combinator(global.combinators983[id983].blueprint_data, global.combinators983[id983]["code"])
	if global.combinators983[id983]["entity"].valid then
		for _, player in pairs(game.players) do
			player.remove_alert {entity = global.combinators983[id983]["entity"]}
		end
	end
	if global.combinators983[id983]["func"] then
		for _, event in pairs(events) do
			_G[event] = nil
		end
		on_nth_tick = {}

		local _, error983 = combinator_process(e983, id983, global.combinators983[id983]["func"])
		--pcall(global.combinators983[id983]["func"],event)
		if error983 then
			global.combinators983[id983]["errors"] = global.combinators983[id983]["errors"] .. "+++" .. error983
		else
			for _, event in pairs(events) do
				if _G[event] and type(_G[event]) == "function" then
					if not global.events[event] then
						global.events[event] = {}
					end
					global.events[event][id983] = _G[event]
				elseif global.events[event] then
					global.events[event][id983] = nil
					if table_length(global.events[event]) == 0 then
						global.events[event] = nil
					end
				end
			end
			if not global.events["on_nth_tick"] then
				global.events["on_nth_tick"] = {}
			end
			for tick, functions in pairs(global.events["on_nth_tick"]) do
				functions[id983] = nil
				if table_length(functions) == 0 then
					global.events["on_nth_tick"][tick] = nil
				end
			end
			for tick, func in pairs(on_nth_tick) do
				if not global.events["on_nth_tick"][tick] then
					global.events["on_nth_tick"][tick] = {}
				end
				global.events["on_nth_tick"][tick][id983] = func
			end
			if table_length(global.events["on_nth_tick"]) == 0 then
				global.events["on_nth_tick"] = nil
			end
		end
	end
end

function table_length(tbl)
	i = 0
	for _ in pairs(tbl) do
		i = i + 1
	end
	return i
end
