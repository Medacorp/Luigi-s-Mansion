execute unless data storage luigis_mansion:data {used_parlor_key:1b} run place template luigis_beta_mansion:gameboy_horror_map/door/double_locked 3698 110 6
execute if data storage luigis_mansion:data {used_parlor_key:1b} run place template luigis_beta_mansion:gameboy_horror_map/door/double_unlocked 3698 110 6
tag @e[tag=living_room,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data {obtained_parlor_key:1b} unless data storage luigis_mansion:data {used_parlor_key:1b} positioned 3698 110 6 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/double
tag @e[tag=this_entity,limit=1] add living_room
tag @e[tag=this_entity,limit=1] remove this_entity