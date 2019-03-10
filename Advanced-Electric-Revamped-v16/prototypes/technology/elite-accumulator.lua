data:extend(
{
  {
    type = "technology",
    name = "elite-accumulator",
    icon = "__Advanced-Electric-Revamped-v16__/graphics/technology/elite-accumulator.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "elite-accumulator"
      }
    },
    prerequisites = {"advanced-accumulator"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 45
    },
    order = "c-e-c",
  }
}
)
