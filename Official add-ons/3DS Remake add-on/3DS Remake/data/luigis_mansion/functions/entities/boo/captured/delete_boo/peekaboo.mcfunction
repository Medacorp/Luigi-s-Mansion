execute if entity @s[tag=peekaboo] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"peekaboo"}]
execute if entity @s[tag=peekaboo] run kill @e[tag=peekaboo_trap]
execute if entity @s[tag=peekaboo] run data modify storage 3ds_remake:data current_state.boos_caught merge value {peekaboo:1b}