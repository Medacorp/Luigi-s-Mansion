execute if entity @s[tag=mr_boojangles] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"mr_boojangles"}]
execute if entity @s[tag=mr_boojangles] run kill @e[tag=mr_boojangles_trap]
execute if entity @s[tag=mr_boojangles] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {mr_boojangles:1b}