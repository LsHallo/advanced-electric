local mul = settings.startup["advanced-electric-multiplier-elite-accumulator"].value
local tier = settings.startup["advanced-electric-enabled-tiers"].value

function elite_accumulator_picture(tint, repeat_count)
  return
  {
    layers =
    {
      {
        filename = "__Advanced-Electric-Revamped-v16__/graphics/entity/elite-accumulator/hr-accumulator.png",
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

local elite_accumulator = util.table.deepcopy(orig_accu)
elite_accumulator.name = "elite-accumulator"
elite_accumulator.icon = "__Advanced-Electric-Revamped-v16__/graphics/icons/elite-accumulator.png"
elite_accumulator.icon_size = 64
elite_accumulator.icon_mipmaps = 4
elite_accumulator.minable.result =  "elite-accumulator"
elite_accumulator.max_health = 325
elite_accumulator.energy_source = {
  type = "electric",
  buffer_capacity =  numberstringmultiplicator(orig_accu["energy_source"]["buffer_capacity"], mul),
  usage_priority = "tertiary",
  input_flow_limit = numberstringmultiplicator(orig_accu["energy_source"]["input_flow_limit"], mul),
  output_flow_limit = numberstringmultiplicator(orig_accu["energy_source"]["output_flow_limit"], mul)
}
elite_accumulator.chargable_graphics = {
	picture = elite_accumulator_picture(),
	charge_animation = advanced_electric_accumulator_charge(elite_accumulator_picture),
	charge_cooldown = 30,
	charge_light = {intensity = 0.7, size = 7, color = {r = 0.1, g = 0.13, b = 0.28}},
	discharge_animation = advanced_electric_accumulator_discharge(elite_accumulator_picture),
	discharge_cooldown = 60,
	discharge_light = {intensity = 0.7, size = 7, color = {r = 0.1, g = 0.13, b = 0.28}},
}
elite_accumulator.fast_replaceable_group = "accumulator"
if tier == "ultimate" then
	elite_accumulator.next_upgrade = "ultimate-accumulator"
end
data:extend({elite_accumulator})