execute unless entity @s as @a run function luigis_mansion:main/get_same_room
playsound luigis_mansion:furniture.search.wall block @a[tag=same_room] ~ ~ ~ 1
execute unless entity @s run tag @a[tag=same_room] remove same_room
execute unless entity @s run tag @a[tag=exact_same_room] remove exact_same_room