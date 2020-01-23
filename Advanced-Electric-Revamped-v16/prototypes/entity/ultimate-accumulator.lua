function ultimate_accumulator_picture(tint, repeat_count)
  return
  {
    layers =
    {
      {
        filename = "__Advanced-Electric-Revamped-v16__/graphics/entity/ultimate-accumulator/accumulator.png",
        priority = "extra-high",
        width = 66,
        height = 94,
        repeat_count = repeat_count,
        shift = util.by_pixel(0, -10),
        tint = tint,
        animation_speed = 0.5,
        hr_version =
        {
          filename = "__Advanced-Electric-Revamped-v16__/graphics/entity/ultimate-accumulator/hr-accumulator.png",
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

function ultimate_accumulator_charge()
  return
  {
    layers =
    {
      ultimate_accumulator_picture({ r=1, g=1, b=1, a=1 } , 24),
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

function ultimate_accumulator_discharge()
  return
  {
    layers =
    {
      ultimate_accumulator_picture({ r=1, g=1, b=1, a=1 } , 24),
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

local ultimate_accumulator = util.table.deepcopy(data.raw["accumulator"]["accumulator"])
ultimate_accumulator.name = "ultimate-accumulator"
ultimate_accumulator.icon = "__Advanced-Electric-Revamped-v16__/graphics/icons/ultimate-accumulator.png"
ultimate_accumulator.icon_size = 32
ultimate_accumulator.icon_mipmaps = 0
ultimate_accumulator.minable.result =  "ultimate-accumulator"
ultimate_accumulator.energy_source = {
  type = "electric",
  buffer_capacity = "5GJ",
  usage_priority = "tertiary",
  input_flow_limit = "300MW",
  output_flow_limit = "300MW"
}
ultimate_accumulator.picture = ultimate_accumulator_picture()
ultimate_accumulator.charge_animation = ultimate_accumulator_charge()
ultimate_accumulator.charge_light = {intensity = 0.3, size = 7, color = {r = 0.22, g = 0.11, b = 0.28}}
ultimate_accumulator.discharge_animation = ultimate_accumulator_discharge()
ultimate_accumulator.discharge_light = {intensity = 0.7, size = 7, color = {r = 0.22, g = 0.11, b = 0.28}}
ultimate_accumulator.fast_replaceable_group = "accumulator"
data:extend({ultimate_accumulator})
