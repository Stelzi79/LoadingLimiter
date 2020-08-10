sp = {
	"automation-science-pack",
	"logistic-science-pack",
	"chemical-science-pack",
	"military-science-pack",
	"production-science-pack",
	"utility-science-pack"
}

combinator = table.deepcopy(data.raw["constant-combinator"]["constant-combinator"])
combinator.name = "loading-limiter"
combinator.item_slot_count = 15
combinator.minable = {mining_time = 0.5, result = "loading-limiter"}
combinator.sprites =
	make_4way_animation_from_spritesheet(
	{
		layers = {
			{
				filename = "__LoadingLimiter__/graphics/lua-combinator.png",
				width = 58,
				height = 52,
				frame_count = 1,
				shift = util.by_pixel(0, 5),
				hr_version = {
					scale = 0.5,
					filename = "__LoadingLimiter__/graphics/hr-lua-combinator.png",
					width = 114,
					height = 102,
					frame_count = 1,
					shift = util.by_pixel(0, 5)
				}
			},
			{
				filename = "__base__/graphics/entity/combinator/constant-combinator-shadow.png",
				width = 50,
				height = 34,
				frame_count = 1,
				shift = util.by_pixel(9, 6),
				draw_as_shadow = true,
				hr_version = {
					scale = 0.5,
					filename = "__base__/graphics/entity/combinator/hr-constant-combinator-shadow.png",
					width = 98,
					height = 66,
					frame_count = 1,
					shift = util.by_pixel(8.5, 5.5),
					draw_as_shadow = true
				}
			}
		}
	}
)

blueprint_data = table.deepcopy(data.raw["constant-combinator"]["constant-combinator"])
blueprint_data.name = "luacom_blueprint_data"
table.insert(blueprint_data.flags, "hide-alt-info")
blueprint_data.order = "xxxx"
blueprint_data.item_slot_count = 500
blueprint_data.selection_box = {{-0.5, -0.5}, {-0.25, -0.25}}
blueprint_data.selectable_in_game = false
--blueprint_data.minable = {mining_time = 0.5, result = "luacom_blueprint_data"}
blueprint_data.collision_mask = {"layer-11"}
blueprint_data.sprites = {
	north = {
		filename = "__LoadingLimiter__/graphics/transparent32.png",
		x = 0,
		y = 0,
		width = 32,
		height = 32,
		shift = {0.078125, 0.15625}
	},
	south = {
		filename = "__LoadingLimiter__/graphics/transparent32.png",
		x = 0,
		y = 0,
		width = 32,
		height = 32,
		shift = {0.078125, 0.15625}
	},
	east = {
		filename = "__LoadingLimiter__/graphics/transparent32.png",
		x = 0,
		y = 0,
		width = 32,
		height = 32,
		shift = {0.078125, 0.15625}
	},
	west = {
		filename = "__LoadingLimiter__/graphics/transparent32.png",
		x = 0,
		y = 0,
		width = 32,
		height = 32,
		shift = {0.078125, 0.15625}
	}
}

blueprint_data_item = table.deepcopy(data.raw.item["constant-combinator"])
blueprint_data_item.name = "luacom_blueprint_data"
blueprint_data_item.icon = "__LoadingLimiter__/graphics/blueprint_data.png"
blueprint_data_item.icon_size = 64
blueprint_data_item.place_result = "luacom_blueprint_data"
if blueprint_data_item.flags then
	table.insert(blueprint_data_item.flags, "hidden")
else
	blueprint_data_item.flags = {"hidden"}
end

data:extend(
	{
		combinator,
		blueprint_data,
		blueprint_data_item,
		{
			type = "item",
			name = "loading-limiter",
			icon_size = 64,
			icon = "__LoadingLimiter__/graphics/lua-combinator-icon.png",
			flags = {flag_quickbar},
			subgroup = "circuit-network",
			order = "c[combinators]-c[constant-combinator]",
			place_result = "loading-limiter",
			stack_size = 50
		},
		{
			type = "recipe",
			name = "loading-limiter",
			icon_size = 64,
			enabled = "false",
			ingredients = {
				{"constant-combinator", 1},
				{"small-lamp", 1},
				{"electronic-circuit", 5}
			},
			result = "loading-limiter"
		},
		{
			type = "technology",
			name = "loading-limiter",
			icon_size = 144,
			icon = "__LoadingLimiter__/thumbnail.png",
			effects = {
				{
					type = "unlock-recipe",
					recipe = "loading-limiter"
				}
			},
			prerequisites = {"circuit-network", "advanced-electronics"},
			unit = {
				count = 100,
				ingredients = {
					{sp[1], 1},
					{sp[2], 1}
				},
				time = 15
			},
			order = "a-d-d-z"
		},
		{
			type = "virtual-signal",
			name = "luacom_error",
			special_signal = false,
			--icon = "__Wave_Defense_Unlimited__/graphics/swords_red.png",
			icon = "__LoadingLimiter__/graphics/error-icon.png",
			icon_size = 64,
			subgroup = "virtual-signal-special",
			order = "a[special]-[1everything]"
		},
		{
			type = "sprite",
			name = "luacom_bug",
			filename = "__LoadingLimiter__/graphics/bug.png",
			priority = "extra-high-no-scale",
			width = 32,
			height = 32,
			flags = {"no-crop", "icon"},
			scale = 0.2
		},
		{
			type = "sprite",
			name = "luacom_forward",
			filename = "__LoadingLimiter__/graphics/forward.png",
			priority = "extra-high-no-scale",
			width = 32,
			height = 32,
			flags = {"no-crop", "icon"},
			scale = 0.3
		},
		{
			type = "sprite",
			name = "luacom_back",
			filename = "__LoadingLimiter__/graphics/back.png",
			priority = "extra-high-no-scale",
			width = 32,
			height = 32,
			flags = {"no-crop", "icon"},
			scale = 0.3
		},
		{
			type = "sprite",
			name = "luacom_forward_enabled",
			filename = "__LoadingLimiter__/graphics/forward_enabled.png",
			priority = "extra-high-no-scale",
			width = 32,
			height = 32,
			flags = {"no-crop", "icon"},
			scale = 0.3
		},
		{
			type = "sprite",
			name = "luacom_back_enabled",
			filename = "__LoadingLimiter__/graphics/back_enabled.png",
			priority = "extra-high-no-scale",
			width = 32,
			height = 32,
			flags = {"no-crop", "icon"},
			scale = 0.3
		},
		{
			type = "sprite",
			name = "luacom_close",
			filename = "__LoadingLimiter__/graphics/close.png",
			priority = "extra-high-no-scale",
			width = 20,
			height = 20,
			flags = {"no-crop", "icon"},
			scale = 1
		},
		{
			type = "sprite",
			name = "luacom_questionmark",
			filename = "__LoadingLimiter__/graphics/questionmark.png",
			priority = "extra-high-no-scale",
			width = 20,
			height = 20,
			flags = {"no-crop", "icon"},
			scale = 1
		}
	}
)
