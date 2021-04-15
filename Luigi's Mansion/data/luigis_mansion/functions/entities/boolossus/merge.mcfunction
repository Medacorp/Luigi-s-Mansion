function luigis_mansion:spawn_entities/portrait_ghost/boolossus/battle
execute as @e[tag=boolossus,tag=!split,limit=1] run function luigis_mansion:entities/boolossus/get_merge_count
tag @e[tag=boolossus,tag=split,tag=!dead] add dead
