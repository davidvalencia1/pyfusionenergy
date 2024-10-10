local resource_autoplace = require "resource-autoplace"

data.raw.planet.nauvis.map_gen_settings.autoplace_controls["molybdenum-ore"] = {}

data:extend {{
    type = "autoplace-control",
    name = "molybdenum-ore",
    richness = true,
    order = "p-moly",
    category = "resource"
}}

-- data:extend{{
--     type = "noise-layer",
--     name = "molybdenum-ore"
-- }}

ENTITY {
    type = "resource",
    name = "molybdenum-ore",
    category = "molybdenum",
    icon = "__pyfusionenergygraphics__/graphics/icons/ores/molybdenum.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.294, g = 0.45, b = 0.643},
    highlight = true,
    minable = {
        -- mining_particle = "molybdenum-ore-particle",
        mining_time = 3,
        results = {
            {type = "item", name = "molybdenum-ore", amount = 1}
        }
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = resource_autoplace.resource_autoplace_settings {
        name = "molybdenum-ore",
        order = "b",
        base_density = 10,
        base_spots_per_km2 = 1.25,
        has_starting_area_placement = false,
        random_spot_size_minimum = 2,
        random_spot_size_maximum = 4,
        regular_rq_factor_multiplier = 1,
        starting_rq_factor_multiplier = 2,
        candidate_spot_count = 20
    },
    stage_counts = {20000, 13000, 10000, 5000, 3000, 1000, 500, 100},
    stages = {
        sheet = {
            filename = "__pyfusionenergygraphics__/graphics/entity/ores/hr-molybdenum-ore.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            frame_count = 8,
            variation_count = 8,
            scale = 0.5
        }
    }
}
