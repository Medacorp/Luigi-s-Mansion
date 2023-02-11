function luigis_mansion:items/interact/target_furniture/root
execute if entity @s[tag=hit,tag=cannot_search_when_open,tag=open] run tag @a[tag=searcher,limit=1] add not_facing
execute if entity @s[tag=hit] run function luigis_mansion:entities/furniture/interact_animation
execute if entity @s[tag=hit] if entity @e[tag=interact,tag=manual,limit=1,tag=feet] run scoreboard players set @a[tag=searcher,limit=1] Animation 43
tag @s remove hit