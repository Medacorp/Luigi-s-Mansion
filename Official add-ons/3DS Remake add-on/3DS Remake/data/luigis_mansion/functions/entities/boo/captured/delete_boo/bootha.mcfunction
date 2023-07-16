execute if entity @s[tag=bootha] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"bootha"}]
execute if entity @s[tag=bootha] run kill @e[tag=bootha_trap]
execute if entity @s[tag=bootha] run data modify storage 3ds_remake:data current_state.boos_caught merge value {bootha:1b}