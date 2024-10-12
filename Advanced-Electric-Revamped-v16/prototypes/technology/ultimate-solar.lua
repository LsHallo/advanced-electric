local mul = settings.startup["advanced-electric-multiplier-ultimate-solar"].value

local electromagnetic_science_pack = nil
if mods["space-age"] then
  electromagnetic_science_pack = {"electromagnetic-science-pack", 1}
end

data:extend(
{
  {
    type = "technology",
    name = "ultimate-solar",
    icon = "__Advanced-Electric-Revamped-v16__/graphics/technology/ultimate-solar.png",
    icon_size = 256,
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
        {"utility-science-pack", 1},
        electromagnetic_science_pack
      },
      time = 90
    }
  }
}
)
