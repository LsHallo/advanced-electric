mul = settings.startup["advanced-electric-multiplier-ultimate-accumulator"].value / settings.startup["advanced-electric-multiplier-elite-accumulator"].value

data:extend(
{
  {
    type = "recipe",
    name = "ultimate-accumulator",
    energy_required = 60,
    enabled = false,
    ingredients =
    {
      {"elite-accumulator", mul + 5},
      {"steel-plate", 25},
      {"battery", 25},
	    {"processing-unit", 5}
    },
    result = "ultimate-accumulator"
  }
}
)
