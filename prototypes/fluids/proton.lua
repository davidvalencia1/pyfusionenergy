local fluid = {
    type = "fluid",
    name = "proton",
    icon = "__pyfusionenergy__/graphics/icons/proton.png",
    default_temperature = 15,
    base_color = {r = 0.325, g = 0.921, b = 0.341},
    flow_color = {r = 0.325, g = 0.921, b = 0.341},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "c"
}

data:extend {fluid}