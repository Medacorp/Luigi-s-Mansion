execute unless entity @s as @a run function #luigis_mansion:get_same_room
playsound luigis_mansion:block.search.wall block @a[tag=same_room] ~ ~ ~ 1
execute unless entity @s run tag @a[tag=same_room] remove same_room