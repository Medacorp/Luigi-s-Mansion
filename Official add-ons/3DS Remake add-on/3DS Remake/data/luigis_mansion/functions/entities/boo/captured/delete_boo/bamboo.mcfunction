execute if entity @s[tag=bamboo] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"bamboo"}]
execute if entity @s[tag=bamboo] run kill @e[tag=bamboo_trap]
execute if entity @s[tag=bamboo] run data modify storage 3ds_remake:data current_state.boos_caught merge value {bamboo:1b}