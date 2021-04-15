execute unless data storage luigis_mansion:data {used_parlor_key:1b} run setblock 3698 110 6 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/double_locked"}
execute if data storage luigis_mansion:data {used_parlor_key:1b} run setblock 3698 110 6 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/double_unlocked"}
tag @e[tag=parlor,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data {obtained_parlor_key:1b} unless data storage luigis_mansion:data {used_parlor_key:1b} positioned 3698 110 6 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/double
tag @e[tag=this_entity,limit=1] add parlor
tag @e[tag=this_entity,limit=1] remove this_entity
setblock 3698 111 6 minecraft:redstone_block