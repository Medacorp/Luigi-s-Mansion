execute if entity @s[tag=gumboo] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"gumboo"}]
execute if entity @s[tag=gumboo] run kill @e[tag=gumboo_trap]
execute if entity @s[tag=gumboo] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {gumboo:1b}