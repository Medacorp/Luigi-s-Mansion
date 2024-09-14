execute if entity @s[tag=!processed] rotated ~ 0 positioned ~ ~1.43 ~ positioned ^ ^ ^0.5 run function luigis_mansion:entities/bogmire/ai/mansion/normal/shadow_spawn
tag @s add processed
scoreboard players add @s[tag=vanish] Time 1
tag @s[scores={Time=40..}] add dead