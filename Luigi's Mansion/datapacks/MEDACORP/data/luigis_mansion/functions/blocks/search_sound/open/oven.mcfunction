execute unless entity @s as @a run function luigis_mansion:main/get_same_room
playsound luigis_mansion:furniture.search.open.oven block @a[tag=same_room] ~ ~ ~ 1
execute unless entity @s run tag @a[tag=same_room] remove same_room