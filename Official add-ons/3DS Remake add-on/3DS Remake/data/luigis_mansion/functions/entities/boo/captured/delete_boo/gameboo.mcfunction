execute if entity @s[tag=gameboo] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"gameboo"}]
execute if entity @s[tag=gameboo] run kill @e[tag=gameboo_trap]
execute if entity @s[tag=gameboo] run data modify storage 3ds_remake:data current_state.boos_caught merge value {gameboo:1b}