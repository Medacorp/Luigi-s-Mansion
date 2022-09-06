execute if entity @s[tag=booscaster] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"booscaster"}]
execute if entity @s[tag=booscaster] run kill @e[tag=booscaster_trap]
execute if entity @s[tag=booscaster] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {booscaster:1b}