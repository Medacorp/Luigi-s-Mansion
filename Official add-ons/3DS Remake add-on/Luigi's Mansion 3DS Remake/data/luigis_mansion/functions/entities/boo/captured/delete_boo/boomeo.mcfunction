execute if entity @s[tag=boomeo] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"boomeo"}]
execute if entity @s[tag=boomeo] run kill @e[tag=boomeo_trap]
execute if entity @s[tag=boomeo] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {boomeo:1b}