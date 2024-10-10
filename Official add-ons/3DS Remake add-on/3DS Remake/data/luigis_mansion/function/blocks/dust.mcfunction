execute unless entity @a[tag=portrait_battle,limit=1] run particle minecraft:dust{color:10464537,scale:1.5f} ~ ~ ~ 0.5 0 0.5 1 30
execute unless entity @a[tag=portrait_battle,limit=1] unless entity @s as @a run function luigis_mansion:main/get_same_room
execute unless entity @a[tag=portrait_battle,limit=1] run playsound luigis_mansion:furniture.dust block @a[tag=same_room] ~ ~ ~ 1
execute unless entity @a[tag=portrait_battle,limit=1] unless entity @s run tag @a[tag=same_room] remove same_room
execute unless entity @a[tag=portrait_battle,limit=1] unless entity @s run tag @a[tag=exact_same_room] remove exact_same_room