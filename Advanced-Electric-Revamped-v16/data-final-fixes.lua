-- This fixes krastorio weirdness since it messes with default solar panels and accumulators
-- Final fixes is needed since krastorio uses data-updates.lua to change vanilla items
local orig_accu = data.raw["accumulator"]["accumulator"]

-- Advanced
mul = settings.startup["advanced-electric-multiplier-advanced-accumulator"].value
data.raw["accumulator"]["advanced-accumulator"].energy_source = {
    type = "electric",
    buffer_capacity = numberextractor(orig_accu["energy_source"]["buffer_capacity"]) * mul .. "MJ",
    usage_priority = "tertiary",
    input_flow_limit = numberextractor(orig_accu["energy_source"]["input_flow_limit"]) * mul .. "MW",
    output_flow_limit = numberextractor(orig_accu["energy_source"]["output_flow_limit"]) * mul .. "MW"
}
data.raw["solar-panel"]["advanced-solar"].production = numberextractor(data.raw["solar-panel"]["solar-panel"]["production"]) * mul .. "MW"

-- Elite
mul = settings.startup["advanced-electric-multiplier-elite-accumulator"].value
data.raw["accumulator"]["elite-accumulator"].energy_source = {
    type = "electric",
    buffer_capacity = numberextractor(orig_accu["energy_source"]["buffer_capacity"]) * mul .. "MJ",
    usage_priority = "tertiary",
    input_flow_limit = numberextractor(orig_accu["energy_source"]["input_flow_limit"]) * mul .. "MW",
    output_flow_limit = numberextractor(orig_accu["energy_source"]["output_flow_limit"]) * mul .. "MW"
}
data.raw["solar-panel"]["elite-solar"].production = numberextractor(data.raw["solar-panel"]["solar-panel"]["production"]) * mul .. "MW"

-- Ultimate
mul = settings.startup["advanced-electric-multiplier-ultimate-accumulator"].value
data.raw["accumulator"]["ultimate-accumulator"].energy_source = {
    type = "electric",
    buffer_capacity = numberextractor(orig_accu["energy_source"]["buffer_capacity"]) * mul .. "MJ",
    usage_priority = "tertiary",
    input_flow_limit = numberextractor(orig_accu["energy_source"]["input_flow_limit"]) * mul .. "MW",
    output_flow_limit = numberextractor(orig_accu["energy_source"]["output_flow_limit"]) * mul .. "MW"
}
data.raw["solar-panel"]["ultimate-solar"].production = numberextractor(data.raw["solar-panel"]["solar-panel"]["production"]) * mul .. "MW"