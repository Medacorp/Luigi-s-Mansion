execute if entity @s[tag=boolderdash] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"boolderdash"}]
execute if entity @s[tag=boolderdash] run kill @e[tag=boolderdash_trap]
execute if entity @s[tag=boolderdash] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {boolderdash:1b}