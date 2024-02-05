execute if entity @s[tag=booligan] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"booligan"}]
execute if entity @s[tag=booligan] run kill @e[tag=booligan_trap]
execute if entity @s[tag=booligan] run data modify storage 3ds_remake:data current_state.boos_caught merge value {booligan:1b}