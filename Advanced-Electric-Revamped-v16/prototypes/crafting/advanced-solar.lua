local mul = settings.startup["advanced-electric-multiplier-advanced-solar"].value
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

data:extend(
{
  {
    type = "recipe",
    name = "advanced-solar",
    energy_required = 30,
    enabled = false,
    category = "electronics",
    ingredients =
    {
	  {type = "item", name = "steel-plate", amount = math.floor(5 * difficulty_factor + 0.5)},
	  {type = "item", name = "electronic-circuit", amount = math.floor(5 * difficulty_factor + 0.5)},
	  {type = "item", name = "solar-panel", amount = difficulty_cost}
    },
    results = {{type="item", name="advanced-solar", amount=1}}
  }
}
)
