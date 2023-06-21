mul = settings.startup["advanced-electric-multiplier-elite-solar"].value / settings.startup["advanced-electric-multiplier-advanced-solar"].value

data:extend(
{
  {
    type = "recipe",
    name = "elite-solar",
    energy_required = 45,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 10},
      {"advanced-circuit", 10},
      {"advanced-solar", mul + 2}
    },
    result = "elite-solar"
  }
}
)
