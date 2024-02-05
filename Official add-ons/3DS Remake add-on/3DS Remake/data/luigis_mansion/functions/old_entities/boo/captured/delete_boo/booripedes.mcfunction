execute if entity @s[tag=booripedes] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"booripedes"}]
execute if entity @s[tag=booripedes] run kill @e[tag=booripedes_trap]
execute if entity @s[tag=booripedes] run data modify storage 3ds_remake:data current_state.boos_caught merge value {booripedes:1b}