execute if entity @s[tag=boomerang] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"boomerang"}]
execute if entity @s[tag=boomerang] run kill @e[tag=boomerang_trap]
execute if entity @s[tag=boomerang] run data modify storage 3ds_remake:data current_state.boos_caught merge value {boomerang:1b}