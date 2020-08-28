enable_advanced=settings.startup["advanced-electric-enable-advanced"].value
enable_elite=settings.startup["advanced-electric-enable-elite"].value
enable_ultimate=settings.startup["advanced-electric-enable-ultimate"].value

-- advanced accumulator
require("prototypes.entity.advanced-accumulator")
require("prototypes.item.advanced-accumulator")
if enable_advanced then
	require("prototypes.crafting.advanced-accumulator")
	require("prototypes.technology.advanced-accumulator")
end
-- advanced solar
require("prototypes.entity.advanced-solar")
require("prototypes.item.advanced-solar")
if enable_advanced then
	require("prototypes.crafting.advanced-solar")
	require("prototypes.technology.advanced-solar")
end
-- elite accumulator
require("prototypes.entity.elite-accumulator")
require("prototypes.item.elite-accumulator")
if enable_elite and enable_advanced then
	require("prototypes.crafting.elite-accumulator")
	require("prototypes.technology.elite-accumulator")
end
-- elite solar
require("prototypes.entity.elite-solar")
require("prototypes.item.elite-solar")
if enable_elite and enable_advanced then
	require("prototypes.crafting.elite-solar")
	require("prototypes.technology.elite-solar")
end
-- ultimate accumulator
require("prototypes.entity.ultimate-accumulator")
require("prototypes.item.ultimate-accumulator")
if enable_ultimate and enable_elite and enable_advanced then
	require("prototypes.crafting.ultimate-accumulator")
	require("prototypes.technology.ultimate-accumulator")
end
-- ultimate solar
require("prototypes.entity.ultimate-solar")
require("prototypes.item.ultimate-solar")
if enable_ultimate and enable_elite and enable_advanced then
	require("prototypes.crafting.ultimate-solar")
	require("prototypes.technology.ultimate-solar")
end


data.raw["accumulator"]["accumulator"].fast_replaceable_group = "accumulator"
data.raw["solar-panel"]["solar-panel"].fast_replaceable_group = "solar-panel"

if mods["5dim_core"] then
	require("prototypes.item-group-5dim")
end