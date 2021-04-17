mul = settings.startup["advanced-electric-multiplier-elite-accumulator"].value
tier = settings.startup["advanced-electric-enabled-tiers"].value

function elite_accumulator_picture(tint, repeat_count)
  return
  {
    layers =
    {
      {
        filename = "__Advanced-Electric-Revamped-v16__/graphics/entity/elite-accumulator/accumulator.png",
        priority = "extra-high",
        width = 66,
        height = 94,
        repeat_count = repeat_count,
        shift = util.by_pixel(0, -10),
        tint = tint,
        animation_speed = 0.5,
        hr_version =
        {
          filename = "__Advanced-Electric-Revamped-v16__/graphics/entity/elite-accumulator/hr-accumulator.png",
          priority = "extra-high",
          width = 130,
          height = 189,
          repeat_count = repeat_count,
          shift = util.by_pixel(0, -11),
          tint = tint,
          animation_speed = 0.5,
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
        priority = "extra-high",
        width = 120,
        height = 54,
        repeat_count = repeat_count,
        shift = util.by_pixel(28, 6),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/accumulator/hr-accumulator-shadow.png",
          priority = "extra-high",
          width = 234,
          height = 106,
          repeat_count = repeat_count,
          shift = util.by_pixel(29, 6),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  }
end

function elite_accumulator_charge()
  return
  {
    layers =
    {
      elite_accumulator_picture({ r=1, g=1, b=1, a=1 } , 24),
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",
        width = 90,
        height = 100,
        line_length = 6,
        frame_count = 24,
        blend_mode = "additive",
        shift = util.by_pixel(0, -22),
        hr_version =
        {
          filename = "__base__/graphics/entity/accumulator/hr-accumulator-charge.png",
          width = 178,
          height = 206,
          line_length = 6,
          frame_count = 24,
          blend_mode = "additive",
          shift = util.by_pixel(0, -22),
          scale = 0.5
        }
      }
    }
  }
end

function elite_accumulator_discharge()
  return
  {
    layers =
    {
      elite_accumulator_picture({ r=1, g=1, b=1, a=1 } , 24),
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",
        width = 88,
        height = 104,
        line_length = 6,
        frame_count = 24,
        blend_mode = "additive",
        shift = util.by_pixel(-2, -22),
        hr_version =
        {
          filename = "__base__/graphics/entity/accumulator/hr-accumulator-discharge.png",
          width = 170,
          height = 210,
          line_length = 6,
          frame_count = 24,
          blend_mode = "additive",
          shift = util.by_pixel(-1, -23),
          scale = 0.5
        }
      }
    }
  }
end

local elite_accumulator = util.table.deepcopy(data.raw["accumulator"]["accumulator"])
elite_accumulator.name = "elite-accumulator"
elite_accumulator.icon = "__Advanced-Electric-Revamped-v16__/graphics/icons/elite-accumulator.png"
elite_accumulator.icon_size = 64
elite_accumulator.icon_mipmaps = 4
elite_accumulator.minable.result =  "elite-accumulator"
elite_accumulator.max_health = 325
elite_accumulator.energy_source = {
  type = "electric",
  buffer_capacity = 5 * mul .. "MJ",
  usage_priority = "tertiary",
  input_flow_limit = .3 * mul .. "MW",
  output_flow_limit = .3 * mul .. "MW"
}
elite_accumulator.picture = elite_accumulator_picture()
elite_accumulator.charge_animation = elite_accumulator_charge()
elite_accumulator.charge_light = {intensity = 0.3, size = 7, color = {r = 0.1, g = 0.13, b = 0.28}}
elite_accumulator.discharge_animation = elite_accumulator_discharge()
elite_accumulator.discharge_light = {intensity = 0.7, size = 7, color = {r = 0.1, g = 0.13, b = 0.28}}
elite_accumulator.fast_replaceable_group = "accumulator"
if tier == "ultimate" then
	elite_accumulator.next_upgrade = "ultimate-accumulator"
end
data:extend({elite_accumulator})