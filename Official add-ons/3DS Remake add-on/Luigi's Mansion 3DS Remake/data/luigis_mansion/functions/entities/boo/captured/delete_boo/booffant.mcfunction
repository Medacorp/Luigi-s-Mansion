execute if entity @s[tag=booffant] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"booffant"}]
execute if entity @s[tag=booffant] run kill @e[tag=booffant_trap]
execute if entity @s[tag=booffant] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {booffant:1b}