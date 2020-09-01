mul = settings.startup["advanced-electric-multiplier-advanced"].value

data:extend(
{
  {
    type = "recipe",
    name = "advanced-solar",
    energy_required = 30,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 5},
      {"electronic-circuit", 5},
      {"solar-panel", mul + 1}
    },
    result = "advanced-solar"
  }
}
)
