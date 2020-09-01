mul = settings.startup["advanced-electric-multiplier-elite"].value

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
      {"advanced-solar", mul / 10 + 2}
    },
    result = "elite-solar"
  }
}
)
