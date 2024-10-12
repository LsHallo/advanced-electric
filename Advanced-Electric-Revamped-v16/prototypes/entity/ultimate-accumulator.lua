local mul = settings.startup["advanced-electric-multiplier-ultimate-accumulator"].value

function ultimate_accumulator_picture(tint, repeat_count)
  return
  {
    layers =
    {
      {
        filename = "__Advanced-Electric-Revamped-v16__/graphics/entity/ultimate-accumulator/hr-accumulator.png",
        priority = "high",
        width = 130,
        height = 189,
        repeat_count = repeat_count,
        shift = util.by_pixel(0, -11),
        tint = tint,
        scale = 0.5
      },
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
        priority = "high",
        width = 234,
        height = 106,
        repeat_count = repeat_count,
        shift = util.by_pixel(29, 6),
        draw_as_shadow = true,
        scale = 0.5
      }
    }
  }
end

local orig_accu = data.raw["accumulator"]["accumulator"]

local ultimate_accumulator = util.table.deepcopy(orig_accu)
ultimate_accumulator.name = "ultimate-accumulator"
ultimate_accumulator.icon = "__Advanced-Electric-Revamped-v16__/graphics/icons/ultimate-accumulator.png"
ultimate_accumulator.icon_size = 64
ultimate_accumulator.icon_mipmaps = 4
ultimate_accumulator.minable.result =  "ultimate-accumulator"
ultimate_accumulator.max_health = 450
ultimate_accumulator.energy_source = {
  type = "electric",
  buffer_capacity =  numberstringmultiplicator(orig_accu["energy_source"]["buffer_capacity"], mul),
  usage_priority = "tertiary",
  input_flow_limit = numberstringmultiplicator(orig_accu["energy_source"]["input_flow_limit"], mul),
  output_flow_limit = numberstringmultiplicator(orig_accu["energy_source"]["output_flow_limit"], mul)
}
ultimate_accumulator.chargable_graphics = {
	picture = ultimate_accumulator_picture(),
	charge_animation = advanced_electric_accumulator_charge(ultimate_accumulator_picture),
	charge_cooldown = 30,
	charge_light = {intensity = 0.7, size = 7, color = {r = 0.22, g = 0.11, b = 0.28}},
	discharge_animation = advanced_electric_accumulator_discharge(ultimate_accumulator_picture),
	discharge_cooldown = 60,
	discharge_light = {intensity = 0.7, size = 7, color = {r = 0.22, g = 0.11, b = 0.28}},
}
ultimate_accumulator.fast_replaceable_group = "accumulator"
data:extend({ultimate_accumulator})
