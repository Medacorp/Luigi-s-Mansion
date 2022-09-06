execute if entity @s[tag=bootique] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"bootique"}]
execute if entity @s[tag=bootique] run kill @e[tag=bootique_trap]
execute if entity @s[tag=bootique] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {bootique:1b}