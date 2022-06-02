execute if block ^ ^ ^0.3 #luigis_mansion:ghosts_ignore unless entity @a[gamemode=!spectator,distance=..1.2,limit=1] positioned as @s run teleport @s ^ ^ ^0.1
execute unless block ^ ^ ^0.3 #luigis_mansion:ghosts_ignore rotated ~ 0 if block ^ ^ ^0.3 #luigis_mansion:ghosts_ignore unless entity @a[gamemode=!spectator,distance=..1.2,limit=1] positioned as @s run teleport @s ^ ^ ^0.1
execute if entity @a[tag=me,distance=..1.2,limit=1] run tag @s add normal_death
execute if entity @a[tag=me,distance=..1.2,limit=1] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost