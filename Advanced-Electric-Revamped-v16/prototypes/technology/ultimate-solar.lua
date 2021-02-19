mul = settings.startup["advanced-electric-multiplier-ultimate-solar"].value

data:extend(
{
  {
    type = "technology",
    name = "ultimate-solar",
    icon = "__Advanced-Electric-Revamped-v16__/graphics/technology/ultimate-solar.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ultimate-solar"
      }
    },
    prerequisites = {"elite-solar"},
    unit =
    {
      count = 1.5 * mul,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 90
    },
    order = "a-h-f",
  }
}
)
