execute if entity @s[tag=booris] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"booris"}]
execute if entity @s[tag=booris] run kill @e[tag=booris_trap]
execute if entity @s[tag=booris] run data modify storage 3ds_remake:data current_state.boos_caught merge value {booris:1b}