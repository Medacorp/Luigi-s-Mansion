execute if entity @s[tag=!dialog,tag=!big] if entity @a[gamemode=!spectator,distance=..2,limit=1] if entity @s[tag=!dying,tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/rocking_horse/collide
execute if entity @s[tag=!dialog,tag=big] if entity @a[gamemode=!spectator,distance=..4,limit=1] if entity @s[tag=!dying,tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/rocking_horse/collide
execute if entity @s[tag=!attack,tag=!intro] run function luigis_mansion:animations/rocking_horse
execute if entity @s[tag=attack] run function luigis_mansion:entities/rocking_horse/attack
execute rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion:all_ignore run tag @s add dead

scoreboard players set #temp Move 2
execute if entity @s[tag=intro] run scoreboard players set #temp Move 3
execute if entity @s[tag=fast] run scoreboard players set #temp Move 4
execute at @s[tag=!attack] run function luigis_mansion:entities/ghost/move_forward