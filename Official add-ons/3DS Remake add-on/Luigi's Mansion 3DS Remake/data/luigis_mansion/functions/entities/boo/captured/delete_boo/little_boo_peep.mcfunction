execute if entity @s[tag=little_boo_peep] run data remove storage luigis_mansion:data current_state.current_data.boos[{name:"little_boo_peep"}]
execute if entity @s[tag=little_boo_peep] run kill @e[tag=little_boo_peep_trap]
execute if entity @s[tag=little_boo_peep] run data modify storage luigis_mansion_3ds_remake:data current_state.boos_caught merge value {little_boo_peep:1b}