scoreboard players operation #temp Steps = @s Steps
execute if entity @s[tag=!processed] positioned ~ ~1.43 ~ positioned ^ ^ ^0.5 run function luigis_mansion:old_entities/bogmire/spawn_shadow
tag @s add processed
scoreboard players add @s[tag=vanish] Time 1
tag @s[scores={Time=40..}] add dead