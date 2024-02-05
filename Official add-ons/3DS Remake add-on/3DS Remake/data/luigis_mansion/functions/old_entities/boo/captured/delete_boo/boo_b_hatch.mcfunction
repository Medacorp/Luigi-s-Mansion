execute if entity @s[tag=boo_b_hatch] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"boo_b_hatch"}]
execute if entity @s[tag=boo_b_hatch] run kill @e[tag=boo_b_hatch_trap]
execute if entity @s[tag=boo_b_hatch] run data modify storage 3ds_remake:data current_state.boos_caught merge value {boo_b_hatch:1b}