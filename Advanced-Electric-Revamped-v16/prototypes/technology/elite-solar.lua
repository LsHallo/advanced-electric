local mul = settings.startup["advanced-electric-multiplier-elite-solar"].value

data:extend(
{
  {
    type = "technology",
    name = "elite-solar",
    icon = "__Advanced-Electric-Revamped-v16__/graphics/technology/elite-solar.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "elite-solar"
      }
    },
    prerequisites = {"advanced-solar"},
    unit =
    {
      count = 5 * mul,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 60
    },
    order = "a-h-e",
  }
}
)
