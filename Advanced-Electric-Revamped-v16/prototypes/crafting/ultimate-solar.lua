mul = settings.startup["advanced-electric-multiplier-ultimate-solar"].value / settings.startup["advanced-electric-multiplier-elite-solar"].value

data:extend(
{
  {
    type = "recipe",
    name = "ultimate-solar",
    energy_required = 60,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 50},
      {"processing-unit", 50},
      {"elite-solar", mul + 5}
    },
    result = "ultimate-solar"
  }
}
)
