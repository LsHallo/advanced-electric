data:extend(
{
  {
    type = "technology",
    name = "advanced-solar",
    icon = "__Advanced-Electric-Revamped-v16__/graphics/technology/advanced-solar.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-solar"
      }
    },
    prerequisites = {"solar-energy"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 60
    },
    order = "a-h-d",
  }
}
)
