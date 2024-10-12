local mul = settings.startup["advanced-electric-multiplier-ultimate-solar"].value / settings.startup["advanced-electric-multiplier-elite-solar"].value
local difficulty = settings.startup["advanced-electric-difficulty"].value

local difficulty_cost = math.floor(mul * 1.1 + 0.5)
local difficulty_factor = 0.8
if difficulty == "easy" then
	difficulty_cost = mul
	difficulty_factor = 0.5
end
if difficulty == "hard" then
	difficulty_cost = math.floor(mul * 1.3 + 0.5)
	difficulty_factor = 1.2
end

local steel_plate_tungsten_plate = {type = "item", name = "steel-plate", amount = math.floor(25 * difficulty_factor + 0.5)}
local processing_unit_superconductor = {type = "item", name = "processing-unit", amount = math.floor(25 * difficulty_factor + 0.5)}
local recipe_category = "crafting"
if mods["space-age"] then
	steel_plate_tungsten_plate = {type = "item", name = "tungsten-plate", amount = math.floor(10 * difficulty_factor + 0.5)}
	processing_unit_superconductor = {type = "item", name = "superconductor", amount = math.floor(5 * difficulty_factor + 0.5)}
	recipe_category = "electromagnetics"
end

data:extend(
{
  {
    type = "recipe",
    name = "ultimate-solar",
    energy_required = 60,
    enabled = false,
    ingredients =
    {
	  steel_plate_tungsten_plate,
	  processing_unit_superconductor,
	  {type = "item", name = "elite-solar", amount = difficulty_cost}
    },
	category = recipe_category,
    results = {{type="item", name="ultimate-solar", amount=1}}
  }
}
)
