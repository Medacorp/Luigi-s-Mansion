execute if entity @s[tag=booregard] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"booregard"}]
execute if entity @s[tag=booregard] run kill @e[tag=booregard_trap]
execute if entity @s[tag=booregard] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {booregard:1b}