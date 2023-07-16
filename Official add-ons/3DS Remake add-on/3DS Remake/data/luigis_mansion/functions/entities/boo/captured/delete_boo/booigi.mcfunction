execute if entity @s[tag=booigi] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"booigi"}]
execute if entity @s[tag=booigi] run kill @e[tag=booigi_trap]
execute if entity @s[tag=booigi] run data modify storage 3ds_remake:data current_state.boos_caught merge value {booigi:1b}