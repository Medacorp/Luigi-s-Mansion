execute if entity @s[tag=limbooger] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"limbooger"}]
execute if entity @s[tag=limbooger] run kill @e[tag=limbooger_trap]
execute if entity @s[tag=limbooger] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {limbooger:1b}