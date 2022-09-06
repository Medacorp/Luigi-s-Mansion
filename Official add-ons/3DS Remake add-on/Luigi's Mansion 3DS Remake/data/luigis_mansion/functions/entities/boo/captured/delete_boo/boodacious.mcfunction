execute if entity @s[tag=boodacious] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"boodacious"}]
execute if entity @s[tag=boodacious] run kill @e[tag=boodacious_trap]
execute if entity @s[tag=boodacious] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {boodacious:1b}