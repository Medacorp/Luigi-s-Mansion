execute if entity @s[tag=boolldog] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"boolldog"}]
execute if entity @s[tag=boolldog] run kill @e[tag=boolldog_trap]
execute if entity @s[tag=boolldog] run data modify storage 3ds_remake:data current_state.boos_caught merge value {boolldog:1b}