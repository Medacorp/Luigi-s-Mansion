execute if entity @s[tag=boolivia] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"boolivia"}]
execute if entity @s[tag=boolivia] run kill @e[tag=boolivia_trap]
execute if entity @s[tag=boolivia] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {boolivia:1b}