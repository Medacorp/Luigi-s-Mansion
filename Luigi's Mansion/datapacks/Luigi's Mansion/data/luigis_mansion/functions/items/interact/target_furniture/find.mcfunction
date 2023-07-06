function luigis_mansion:items/interact/target_furniture/root
execute if entity @s[tag=hit] run tag @e[tag=interact,tag=manual,distance=..0.2] add can_interact
execute if entity @s[tag=hit,tag=searchable_by_interact] run tag @e[tag=interact,tag=manual,distance=..0.2] add can_search
tag @s remove hit