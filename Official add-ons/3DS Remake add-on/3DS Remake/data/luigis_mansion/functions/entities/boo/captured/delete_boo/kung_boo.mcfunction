execute if entity @s[tag=kung_boo] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"kung_boo"}]
execute if entity @s[tag=kung_boo] run kill @e[tag=kung_boo_trap]
execute if entity @s[tag=kung_boo] run data modify storage 3ds_remake:data current_state.boos_caught merge value {kung_boo:1b}