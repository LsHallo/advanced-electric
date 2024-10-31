local mul = settings.startup["advanced-electric-multiplier-elite-solar"].value / settings.startup["advanced-electric-multiplier-advanced-solar"].value
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

local category = nil
if mods["space-age"] then
  category = "electronics"
end

data:extend(
{
  {
    type = "recipe",
    name = "elite-solar",
    energy_required = 45,
    enabled = false,
    category = category,
    ingredients =
    {
	  {type = "item", name = "steel-plate", amount = math.floor(10 * difficulty_factor + 0.5)},
	  {type = "item", name = "advanced-circuit", amount = math.floor(10 * difficulty_factor + 0.5)},
	  {type = "item", name = "advanced-solar", amount = difficulty_cost}
    },
    results = {{type="item", name="elite-solar", amount=1}}
  }
}
)
