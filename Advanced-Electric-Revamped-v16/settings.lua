data:extend({
    {
        type = "string-setting",
        name = "advanced-electric-enabled-tiers",
        setting_type = "startup",
        default_value = "ultimate",
        allowed_values = {"advanced", "elite", "ultimate"},
        order = "a"
    },
    {
        type = "string-setting",
        name = "advanced-electric-difficulty",
        setting_type = "startup",
        default_value = "medium",
        allowed_values = {"easy", "medium", "hard"},
        order = "b"
    },
    {
        type = "int-setting",
        name = "advanced-electric-multiplier-advanced-solar",
        setting_type = "startup",
        default_value = 10,
        minimum_value = 1,
        maximum_value = 1000000,
        order = "ca"
    },
    {
        type = "int-setting",
        name = "advanced-electric-multiplier-elite-solar",
        setting_type = "startup",
        default_value = 100,
        minimum_value = 1,
        maximum_value = 1000000,
        order = "da"
    },
    {
        type = "int-setting",
        name = "advanced-electric-multiplier-ultimate-solar",
        setting_type = "startup",
        default_value = 1000,
        minimum_value = 1,
        maximum_value = 1000000,
        order = "ea"
    },
    {
        type = "int-setting",
        name = "advanced-electric-multiplier-advanced-accumulator",
        setting_type = "startup",
        default_value = 10,
        minimum_value = 1,
        maximum_value = 1000000,
        order = "cb"
    },
    {
        type = "int-setting",
        name = "advanced-electric-multiplier-elite-accumulator",
        setting_type = "startup",
        default_value = 100,
        minimum_value = 1,
        maximum_value = 1000000,
        order = "db"
    },
    {
        type = "int-setting",
        name = "advanced-electric-multiplier-ultimate-accumulator",
        setting_type = "startup",
        default_value = 1000,
        minimum_value = 1,
        maximum_value = 1000000,
        order = "eb"
    }
})