tag @s[tag=bat,distance=..0.7] add fleeing
execute positioned as @s[tag=bat,distance=..0.7] if block ^ ^ ^0.3 #luigis_mansion:ghosts_ignore unless entity @a[tag=me,distance=..1.2,limit=1] run teleport @s ^ ^ ^0.1
execute positioned as @s[tag=bat,distance=..0.7] if entity @a[tag=me,distance=..1.2,limit=1] run tag @s add normal_death
execute positioned as @s[tag=bat,distance=..0.7] if entity @a[tag=me,distance=..1.2,limit=1] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost