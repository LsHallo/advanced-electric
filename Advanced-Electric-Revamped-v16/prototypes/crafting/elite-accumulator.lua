local mul = settings.startup["advanced-electric-multiplier-elite-accumulator"].value / settings.startup["advanced-electric-multiplier-advanced-accumulator"].value
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
    name = "elite-accumulator",
    energy_required = 45,
    enabled = false,
    category = "electronics",
    ingredients =
    {
	  {type = "item", name = "advanced-accumulator", amount = difficulty_cost},
	  {type = "item", name = "iron-plate", amount = math.floor(25 * difficulty_factor + 0.5)},
	  {type = "item", name = "advanced-circuit", amount = math.floor(10 * difficulty_factor + 0.5)}
    },
    results = {{type="item", name="elite-accumulator", amount=1}}
  }
}
)
