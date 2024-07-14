mul = settings.startup["advanced-electric-multiplier-ultimate-solar"].value

local ultimate_solar = util.table.deepcopy(data.raw["solar-panel"]["solar-panel"])
ultimate_solar.name = "ultimate-solar"
ultimate_solar.icon = "__Advanced-Electric-Revamped-v16__/graphics/icons/ultimate-solar.png"
ultimate_solar.icon_size = 64
ultimate_solar.icon_mipmaps = 4
ultimate_solar.minable.result = "ultimate-solar"
ultimate_solar.max_health = 500
ultimate_solar.picture = 
{
  layers =
  {
	{
	  filename = "__Advanced-Electric-Revamped-v16__/graphics/entity/ultimate-solar/solar-panel.png",
	  priority = "high",
	  width = 116,
	  height = 112,
	  shift = util.by_pixel(-3, 3),
	  hr_version = {
		filename = "__Advanced-Electric-Revamped-v16__/graphics/entity/ultimate-solar/hr-solar-panel.png",
		priority = "high",
		width = 230,
		height = 224,
		shift = util.by_pixel(-3, 3.5),
		scale = 0.5
	  }
	},
	{
	  filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
	  priority = "high",
	  width = 112,
	  height = 90,
	  shift = util.by_pixel(10, 6),
	  draw_as_shadow = true,
	  hr_version = {
		filename = "__base__/graphics/entity/solar-panel/hr-solar-panel-shadow.png",
		priority = "high",
		width = 220,
		height = 180,
		shift = util.by_pixel(9.5, 6),
		draw_as_shadow = true,
		scale = 0.5
	  }
	}
  }
}
ultimate_solar.production = numberstringmultiplicator(data.raw["solar-panel"]["solar-panel"]["production"], mul)
ultimate_solar.fast_replaceable_group = "solar-panel"
data:extend({ultimate_solar})

