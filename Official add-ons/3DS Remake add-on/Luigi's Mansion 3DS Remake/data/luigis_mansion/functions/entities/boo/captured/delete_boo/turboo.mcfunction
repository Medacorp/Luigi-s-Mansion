execute if entity @s[tag=turboo] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"turboo"}]
execute if entity @s[tag=turboo] run kill @e[tag=turboo_trap]
execute if entity @s[tag=turboo] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {turboo:1b}