execute if entity @s[tag=boonswoggle] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"boonswoggle"}]
execute if entity @s[tag=boonswoggle] run kill @e[tag=boonswoggle_trap]
execute if entity @s[tag=boonswoggle] run data modify storage 3ds_remake:data current_state.boos_caught merge value {boonswoggle:1b}