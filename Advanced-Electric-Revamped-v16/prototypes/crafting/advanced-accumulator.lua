local mul = settings.startup["advanced-electric-multiplier-advanced-accumulator"].value
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
    name = "advanced-accumulator",
    energy_required = 30,
    enabled = false,
    category = "electronics",
    ingredients =
    {
      {type = "item", name = "accumulator", amount = difficulty_cost},
      {type = "item", name = "iron-plate", amount = math.floor(10 * difficulty_factor + 0.5)},
      {type = "item", name = "electronic-circuit", amount = math.floor(5 * difficulty_factor + 0.5)}
    },
    results = {{type="item", name="advanced-accumulator", amount=1}}
  }
}
)
