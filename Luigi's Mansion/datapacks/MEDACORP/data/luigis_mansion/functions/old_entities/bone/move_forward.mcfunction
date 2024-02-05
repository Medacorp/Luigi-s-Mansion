teleport @s ^ ^ ^0.01
execute if entity @s[scores={Sound=0}] run playsound luigis_mansion:entity.bone.fly hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 4
scoreboard players remove #temp Move 1
execute at @s[tag=!spooky_bone] unless block ~ ~ ~ #luigis_mansion:ghosts_ignore unless block ~ ~ ~ #minecraft:slabs[type=bottom] run tag @s add dead
execute store result score #temp GhostNr run data get entity @s Pose.Head[0]
execute store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp GhostNr 5
execute if score #temp Move matches 1.. positioned as @s if block ~ ~ ~ #luigis_mansion:ghosts_ignore run function luigis_mansion:old_entities/bone/move_forward
execute if score #temp Move matches 1.. positioned as @s if block ~ ~ ~ #minecraft:slabs[type=bottom] run function luigis_mansion:old_entities/bone/move_forward