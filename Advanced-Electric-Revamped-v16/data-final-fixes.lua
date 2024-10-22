-- This fixes krastorio weirdness since it messes with default solar panels and accumulators
-- Final fixes is needed since krastorio uses data-updates.lua to change vanilla items

if mods["Krastorio2"] then
	local orig_accu = data.raw["accumulator"]["accumulator"]

	-- Advanced
	mul = settings.startup["advanced-electric-multiplier-advanced-accumulator"].value
	data.raw["accumulator"]["advanced-accumulator"].energy_source = {
		type = "electric",
		buffer_capacity = numberstringmultiplicator(orig_accu["energy_source"]["buffer_capacity"], mul),
		usage_priority = "tertiary",
		input_flow_limit = numberstringmultiplicator(orig_accu["energy_source"]["input_flow_limit"], mul),
		output_flow_limit = numberstringmultiplicator(orig_accu["energy_source"]["output_flow_limit"], mul)
	}
	mul = settings.startup["advanced-electric-multiplier-advanced-solar"].value
	data.raw["solar-panel"]["advanced-solar"].production = numberstringmultiplicator(data.raw["solar-panel"]["solar-panel"]["production"], mul)

	-- Elite
	mul = settings.startup["advanced-electric-multiplier-elite-accumulator"].value
	data.raw["accumulator"]["elite-accumulator"].energy_source = {
		type = "electric",
		buffer_capacity = numberstringmultiplicator(orig_accu["energy_source"]["buffer_capacity"], mul),
		usage_priority = "tertiary",
		input_flow_limit = numberstringmultiplicator(orig_accu["energy_source"]["input_flow_limit"], mul),
		output_flow_limit = numberstringmultiplicator(orig_accu["energy_source"]["output_flow_limit"], mul)
	}
	mul = settings.startup["advanced-electric-multiplier-elite-solar"].value
	data.raw["solar-panel"]["elite-solar"].production = numberstringmultiplicator(data.raw["solar-panel"]["solar-panel"]["production"], mul)

	-- Ultimate
	mul = settings.startup["advanced-electric-multiplier-ultimate-accumulator"].value
	data.raw["accumulator"]["ultimate-accumulator"].energy_source = {
		type = "electric",
		buffer_capacity = numberstringmultiplicator(orig_accu["energy_source"]["buffer_capacity"], mul),
		usage_priority = "tertiary",
		input_flow_limit = numberstringmultiplicator(orig_accu["energy_source"]["input_flow_limit"], mul),
		output_flow_limit = numberstringmultiplicator(orig_accu["energy_source"]["output_flow_limit"], mul)
	}
	mul = settings.startup["advanced-electric-multiplier-ultimate-solar"].value
	data.raw["solar-panel"]["ultimate-solar"].production = numberstringmultiplicator(data.raw["solar-panel"]["solar-panel"]["production"], mul)
end

if mods["FactorioExtended-Plus-Power"] == nil then
	data.raw["accumulator"]["accumulator"].next_upgrade = "advanced-accumulator"
	data.raw["solar-panel"]["solar-panel"].next_upgrade = "advanced-solar"
end