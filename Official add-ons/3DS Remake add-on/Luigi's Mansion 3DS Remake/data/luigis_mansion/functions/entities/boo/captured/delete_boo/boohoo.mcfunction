execute if entity @s[tag=boohoo] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"boohoo"}]
execute if entity @s[tag=boohoo] run kill @e[tag=boohoo_trap]
execute if entity @s[tag=boohoo] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {boohoo:1b}