execute if entity @s[tag=underboo] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"underboo"}]
execute if entity @s[tag=underboo] run kill @e[tag=underboo_trap]
execute if entity @s[tag=underboo] run data modify storage 3ds_remake:data current_state.boos_caught merge value {underboo:1b}