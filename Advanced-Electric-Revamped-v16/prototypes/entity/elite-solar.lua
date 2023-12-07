mul = settings.startup["advanced-electric-multiplier-elite-solar"].value
tier = settings.startup["advanced-electric-enabled-tiers"].value

local elite_solar = util.table.deepcopy(data.raw["solar-panel"]["solar-panel"])
elite_solar.name = "elite-solar"
elite_solar.icon = "__Advanced-Electric-Revamped-v16__/graphics/icons/elite-solar.png"
elite_solar.icon_size = 64
elite_solar.icon_mipmaps = 4
elite_solar.minable.result = "elite-solar"
elite_solar.max_health = 375
elite_solar.picture = 
{
  layers =
  {
	{
	  filename = "__Advanced-Electric-Revamped-v16__/graphics/entity/elite-solar/solar-panel.png",
	  priority = "high",
	  width = 116,
	  height = 112,
	  shift = util.by_pixel(-3, 3),
	  hr_version = {
		filename = "__Advanced-Electric-Revamped-v16__/graphics/entity/elite-solar/hr-solar-panel.png",
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
elite_solar.production = numberextractor(data.raw["solar-panel"]["solar-panel"]["production"]) * mul .. "MW"
elite_solar.fast_replaceable_group = "solar-panel"
if tier == "ultimate" then
	elite_solar.next_upgrade = "ultimate-solar"
end
data:extend({elite_solar})
