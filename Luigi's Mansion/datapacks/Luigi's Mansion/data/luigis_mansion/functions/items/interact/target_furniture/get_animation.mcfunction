function luigis_mansion:items/interact/target_furniture/root
execute if entity @s[tag=hit,tag=cannot_search_when_open,tag=open] run tag @a[tag=searcher,limit=1] add not_facing
execute if entity @s[tag=hit] run function luigis_mansion:entities/furniture/interact_animation
tag @s remove hit