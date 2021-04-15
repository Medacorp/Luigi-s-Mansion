scoreboard players add @s[scores={Dialog=162..}] Dialog 1
scoreboard players add @s[scores={Dialog=161},tag=hit] Dialog 1
scoreboard players add @s[scores={Dialog=82..160}] Dialog 1
scoreboard players add @s[scores={Dialog=81},tag=hit] Dialog 1
scoreboard players add @s[scores={Dialog=2..80}] Dialog 1
scoreboard players add @s[scores={Dialog=1},tag=hit] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] at @a[tag=same_room] positioned ^ ^ ^8 run effect give @s[distance=..8] minecraft:invisibility 1 0 true
effect clear @s[nbt={ActiveEffects:[{Id:14b,Duration:19}]}] minecraft:invisibility
execute if entity @s[scores={Dialog=2..11}] run teleport @s ^ ^ ^0.2
execute if entity @s[scores={Dialog=81}] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={Dialog=81}] run function luigis_mansion:entities/ghost/move
execute if entity @s[scores={Dialog=81}] positioned ^ ^ ^0.7 if entity @a[gamemode=!spectator,distance=..0.7,limit=1] at @s run function luigis_mansion:entities/biff_atlas/attack
execute if entity @s[scores={Dialog=82..91}] run teleport @s ^ ^ ^0.2
scoreboard players set @s[scores={Dialog=..160},tag=hit,tag=ko] Dialog 160
tag @s[scores={Dialog=161},tag=!ko] add ko
execute if entity @s[scores={Dialog=161}] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={Dialog=161}] run function luigis_mansion:entities/ghost/move
execute if entity @s[scores={Dialog=161}] run function luigis_mansion:entities/biff_atlas/attack
execute if entity @s[scores={Dialog=162..171}] run teleport @s ^ ^ ^0.2
scoreboard players set @s[scores={Dialog=200}] VulnerableTime 80
tag @s remove hit
scoreboard players set @s[scores={Dialog=290}] Dialog 160