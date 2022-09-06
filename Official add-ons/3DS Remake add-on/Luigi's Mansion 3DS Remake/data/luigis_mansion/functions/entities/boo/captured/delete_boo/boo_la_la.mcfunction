execute if entity @s[tag=boo_la_la] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"boo_la_la"}]
execute if entity @s[tag=boo_la_la] run kill @e[tag=boo_la_la_trap]
execute if entity @s[tag=boo_la_la] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {boo_la_la:1b}