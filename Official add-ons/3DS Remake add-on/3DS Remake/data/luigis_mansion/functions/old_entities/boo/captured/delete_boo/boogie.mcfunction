execute if entity @s[tag=boogie] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"boogie"}]
execute if entity @s[tag=boogie] run kill @e[tag=boogie_trap]
execute if entity @s[tag=boogie] run data modify storage 3ds_remake:data current_state.boos_caught merge value {boogie:1b}