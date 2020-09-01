mul = settings.startup["advanced-electric-multiplier-ultimate"].value

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
      {"elite-solar", mul / 100 + 5}
    },
    result = "ultimate-solar"
  }
}
)
