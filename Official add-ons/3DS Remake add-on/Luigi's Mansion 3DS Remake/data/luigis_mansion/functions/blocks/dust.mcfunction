execute unless entity @a[tag=portrait_battle,limit=1] run particle minecraft:dust 0.7 0.7 0.6 1.5 ~ ~ ~ 0.5 0 0.5 1 30
execute unless entity @a[tag=portrait_battle,limit=1] unless entity @s as @a run function #luigis_mansion:get_same_room
execute unless entity @a[tag=portrait_battle,limit=1] run playsound luigis_mansion:block.dust block @a[tag=same_room] ~ ~ ~ 1
execute unless entity @a[tag=portrait_battle,limit=1] unless entity @s run tag @a[tag=same_room] remove same_room