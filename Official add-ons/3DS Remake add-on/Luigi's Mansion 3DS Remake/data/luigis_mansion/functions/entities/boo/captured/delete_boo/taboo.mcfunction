execute if entity @s[tag=taboo] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"taboo"}]
execute if entity @s[tag=taboo] run kill @e[tag=taboo_trap]
execute if entity @s[tag=taboo] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {taboo:1b}