particle minecraft:dust 0.7 0.7 0.6 1.5 ~ ~ ~ 0.5 0 0.5 1 30
execute unless entity @s as @a run function luigis_mansion:main/get_same_room
playsound luigis_mansion:furniture.dust block @a[tag=same_room] ~ ~ ~ 1
execute unless entity @s run tag @a[tag=same_room] remove same_room