 -- advanced accumulator
require("prototypes.entity.advanced-accumulator")
require("prototypes.item.advanced-accumulator")
require("prototypes.crafting.advanced-accumulator")
require("prototypes.technology.advanced-accumulator")
 -- elite accumulator
require("prototypes.entity.elite-accumulator")
require("prototypes.item.elite-accumulator")
require("prototypes.crafting.elite-accumulator")
require("prototypes.technology.elite-accumulator")
 -- ultimate accumulator
require("prototypes.entity.ultimate-accumulator")
require("prototypes.item.ultimate-accumulator")
require("prototypes.crafting.ultimate-accumulator")
require("prototypes.technology.ultimate-accumulator")
 -- advanced solar
require("prototypes.entity.advanced-solar")
require("prototypes.item.advanced-solar")
require("prototypes.crafting.advanced-solar")
require("prototypes.technology.advanced-solar")
 -- elite solar
require("prototypes.entity.elite-solar")
require("prototypes.item.elite-solar")
require("prototypes.crafting.elite-solar")
require("prototypes.technology.elite-solar")
 -- ultimate solar
require("prototypes.entity.ultimate-solar")
require("prototypes.item.ultimate-solar")
require("prototypes.crafting.ultimate-solar")
require("prototypes.technology.ultimate-solar")


data.raw["accumulator"]["accumulator"].fast_replaceable_group = "accumulator"
data.raw["solar-panel"]["solar-panel"].fast_replaceable_group = "solar-panel"

if mods["5dim_core"] then
	require("prototypes.item-group-5dim")
end