mul = settings.startup["advanced-electric-multiplier-advanced-accumulator"].value

data:extend(
{
  {
    type = "technology",
    name = "advanced-accumulator",
    icon = "__Advanced-Electric-Revamped-v16__/graphics/technology/advanced-accumulator.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-accumulator"
      }
    },
    prerequisites = {"electric-energy-accumulators"},
    unit =
    {
      count = 30 * mul,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 60
    },
    order = "c-e-b",
  }
}
)
