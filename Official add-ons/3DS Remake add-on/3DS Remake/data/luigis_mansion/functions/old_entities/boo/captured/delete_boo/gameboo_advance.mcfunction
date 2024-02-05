execute if entity @s[tag=gameboo_advance] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"gameboo_advance"}]
execute if entity @s[tag=gameboo_advance] run kill @e[tag=gameboo_advance_trap]
execute if entity @s[tag=gameboo_advance] run data modify storage 3ds_remake:data current_state.boos_caught merge value {gameboo_advance:1b}