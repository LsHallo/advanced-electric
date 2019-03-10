local advanced_solar = util.table.deepcopy(data.raw["solar-panel"]["solar-panel"])
advanced_solar.name = "advanced-solar"
advanced_solar.icon = "__Advanced-Electric-Revamped-v16__/graphics/icons/advanced-solar.png"
advanced_solar.minable.result =  "advanced-solar"
advanced_solar.picture = 
{
  layers =
  {
	{
	  filename = "__Advanced-Electric-Revamped-v16__/graphics/entity/advanced-solar/solar-panel.png",
	  priority = "high",
	  width = 116,
	  height = 112,
	  shift = util.by_pixel(-3, 3),
	  hr_version = {
		filename = "__Advanced-Electric-Revamped-v16__/graphics/entity/advanced-solar/hr-solar-panel.png",
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
advanced_solar.production = "600kW"
advanced_solar.fast_replaceable_group = "solar-panel"
data:extend({advanced_solar})
