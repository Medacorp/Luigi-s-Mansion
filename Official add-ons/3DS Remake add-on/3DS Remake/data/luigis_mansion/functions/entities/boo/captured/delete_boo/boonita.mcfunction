execute if entity @s[tag=boonita] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"boonita"}]
execute if entity @s[tag=boonita] run kill @e[tag=boonita_trap]
execute if entity @s[tag=boonita] run data modify storage 3ds_remake:data current_state.boos_caught merge value {boonita:1b}