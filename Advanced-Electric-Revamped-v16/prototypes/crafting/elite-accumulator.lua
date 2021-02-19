mul = settings.startup["advanced-electric-multiplier-elite-accumulator"].value

data:extend(
{
  {
    type = "recipe",
    name = "elite-accumulator",
    energy_required = 45,
    enabled = false,
    ingredients =
    {
      {"advanced-accumulator", mul / 10 + 2},
      {"iron-plate", 25},
      {"advanced-circuit", 10}
    },
    result = "elite-accumulator"
  }
}
)
