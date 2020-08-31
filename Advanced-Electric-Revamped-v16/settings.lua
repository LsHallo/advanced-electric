data:extend({
    {
        type = "string-setting",
        name = "advanced-electric-enabled-tiers",
        setting_type = "startup",
        default_value = "ultimate",
        allowed_values = {"advanced", "elite", "ultimate"}
    },
    {
        type = "int-setting",
        name = "advanced-electric-multiplier-advanced",
        setting_type = "startup",
        default_value = 10,
        minimum_value = 1,
        maximum_value = 100000
    },
    {
        type = "int-setting",
        name = "advanced-electric-multiplier-elite",
        setting_type = "startup",
        default_value = 100,
        minimum_value = 1,
        maximum_value = 100000
    },
    {
        type = "int-setting",
        name = "advanced-electric-multiplier-ultimate",
        setting_type = "startup",
        default_value = 1000,
        minimum_value = 1,
        maximum_value = 100000
    },
})