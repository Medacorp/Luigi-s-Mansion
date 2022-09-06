execute if entity @s[tag=boolicious] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"boolicious"}]
execute if entity @s[tag=boolicious] run kill @e[tag=boolicious_trap]
execute if entity @s[tag=boolicious] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {boolicious:1b}