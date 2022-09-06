execute if entity @s[tag=tamboorine] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"tamboorine"}]
execute if entity @s[tag=tamboorine] run kill @e[tag=tamboorine_trap]
execute if entity @s[tag=tamboorine] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {tamboorine:1b}