mul = settings.startup["advanced-electric-multiplier-advanced-accumulator"].value

data:extend(
{
  {
    type = "recipe",
    name = "advanced-accumulator",
    energy_required = 30,
    enabled = false,
    ingredients =
    {
      {"accumulator", mul + 1},
      {"iron-plate", 10},
      {"electronic-circuit", 5}
    },
    result = "advanced-accumulator"
  }
}
)
