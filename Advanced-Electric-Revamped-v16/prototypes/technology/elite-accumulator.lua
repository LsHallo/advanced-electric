local mul = settings.startup["advanced-electric-multiplier-elite-accumulator"].value

data:extend(
{
  {
    type = "technology",
    name = "elite-accumulator",
    icon = "__Advanced-Electric-Revamped-v16__/graphics/technology/elite-accumulator.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "elite-accumulator"
      }
    },
    prerequisites = {"advanced-accumulator", "production-science-pack"},
    unit =
    {
      count = 3 * mul,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 60
    },
    order = "c-e-c",
  }
}
)
