function numberstringmultiplicator(string, mul)
	-- extract number from string and multiply. then add base unit back
	-- 2MJ -> 2 * 1000, MJ -> 2000MJ
	return (tonumber(string:match("%d+")) * mul) .. string:match("[kmgtwjKMGTWJ]+")
end

function multiplytier(mul)
	difficulty = settings.startup["advanced-electric-difficulty"]
	if difficulty == "easy" then
		return mul
	end
	if difficulty == "medium" then
		return mul + math.floor(mul / 10 + 0.5)
	end
	if difficulty == "hard" then
		return mul * 2
	end
end

-- Reused Accumulator Animation Functions
function advanced_electric_accumulator_discharge(base_graphics)
  return
  {
    layers =
    {
      base_graphics({1, 1, 1, 1} , 24),
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",
        priority = "high",
        width = 174,
        height = 214,
        line_length = 6,
        frame_count = 24,
        draw_as_glow = true,
        shift = util.by_pixel(-1, -23),
        scale = 0.5
      }
    }
  }
end

function advanced_electric_accumulator_charge(base_graphics)
  return
  {
    layers =
    {
      base_graphics({1, 1, 1, 1} , 24),
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",
        priority = "high",
        width = 178,
        height = 210,
        line_length = 6,
        frame_count = 24,
        draw_as_glow = true,
        shift = util.by_pixel(0, -22),
        scale = 0.5
      }
    }
  }
end

tier=settings.startup["advanced-electric-enabled-tiers"].value

-- advanced accumulator
require("prototypes.entity.advanced-accumulator")
require("prototypes.item.advanced-accumulator")
if tier == "advanced" or tier == "elite" or tier == "ultimate" then
	require("prototypes.crafting.advanced-accumulator")
	require("prototypes.technology.advanced-accumulator")
end
-- advanced solar
require("prototypes.entity.advanced-solar")
require("prototypes.item.advanced-solar")
if tier == "advanced" or tier == "elite" or tier == "ultimate" then
	require("prototypes.crafting.advanced-solar")
	require("prototypes.technology.advanced-solar")
end

-- elite accumulator
require("prototypes.entity.elite-accumulator")
require("prototypes.item.elite-accumulator")
if tier == "elite" or tier == "ultimate" then
	require("prototypes.crafting.elite-accumulator")
	require("prototypes.technology.elite-accumulator")
end
-- elite solar
require("prototypes.entity.elite-solar")
require("prototypes.item.elite-solar")
if tier == "elite" or tier == "ultimate" then
	require("prototypes.crafting.elite-solar")
	require("prototypes.technology.elite-solar")
end

-- ultimate accumulator
require("prototypes.entity.ultimate-accumulator")
require("prototypes.item.ultimate-accumulator")
if tier == "ultimate" then
	require("prototypes.crafting.ultimate-accumulator")
	require("prototypes.technology.ultimate-accumulator")
end
-- ultimate solar
require("prototypes.entity.ultimate-solar")
require("prototypes.item.ultimate-solar")
if tier == "ultimate" then
	require("prototypes.crafting.ultimate-solar")
	require("prototypes.technology.ultimate-solar")
end


data.raw["accumulator"]["accumulator"].fast_replaceable_group = "accumulator"
data.raw["solar-panel"]["solar-panel"].fast_replaceable_group = "solar-panel"
if mods["FactorioExtended-Plus-Power"] == nil then
	data.raw["accumulator"]["accumulator"].next_upgrade = "advanced-accumulator"
	data.raw["solar-panel"]["solar-panel"].next_upgrade = "advanced-solar"
end

if mods["5dim_core"] then
	require("prototypes.item-group-5dim")
end
