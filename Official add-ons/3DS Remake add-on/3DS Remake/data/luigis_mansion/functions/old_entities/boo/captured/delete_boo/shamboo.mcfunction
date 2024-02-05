execute if entity @s[tag=shamboo] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"shamboo"}]
execute if entity @s[tag=shamboo] run kill @e[tag=shamboo_trap]
execute if entity @s[tag=shamboo] run data modify storage 3ds_remake:data current_state.boos_caught merge value {shamboo:1b}