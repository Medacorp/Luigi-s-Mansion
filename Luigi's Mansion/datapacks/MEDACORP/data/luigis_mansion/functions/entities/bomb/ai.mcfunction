teleport @s[tag=!hit_floor,tag=!move_up] ^ ^-0.2 ^
teleport @s[tag=hit_floor,tag=!move_up,scores={Move=..9}] ^ ^0.1 ^
teleport @s[tag=move_up] ^ ^0.1 ^
execute at @s run teleport @s[tag=boo] ^ ^ ^0.1
execute at @s if block ~ ~-0.5 ~ #luigis_mansion:ghosts_ignore if block ~ ~-1.5 ~ #luigis_mansion:ghosts_ignore run tag @s[tag=move_up] remove move_up
execute at @s unless block ~ ~-0.1 ~ #luigis_mansion:ghosts_ignore unless block ~ ~0.1 ~ #luigis_mansion:ghosts_ignore run tag @s add move_up
execute at @s unless block ~ ~-0.1 ~ #luigis_mansion:ghosts_ignore if block ~ ~0.1 ~ #luigis_mansion:ghosts_ignore run tag @s[tag=!move_up] add hit_floor
scoreboard players set @s[tag=!hit_floor] Move 0
scoreboard players add @s[tag=hit_floor] Move 1
execute if entity @s[tag=!spawned_particle,scores={Move=..10}] run particle minecraft:lava ~ ~1 ~ 0 0 0 0 1
tag @s[tag=spawned_particle] add no_spawned_particle
tag @s remove spawned_particle
tag @s[tag=!spawned_particle,tag=!no_spawned_particle] add spawned_particle
tag @s remove no_spawned_particle
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if score #mirrored Selected matches 0 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 5
execute if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 5
scoreboard players reset #temp Time
execute at @s[scores={Move=10}] run function luigis_mansion:entities/bomb/explode
execute if entity @s[scores={Move=30,Owner=-2147483648..}] run function luigis_mansion:entities/bomb/owner_response
tag @s[scores={Move=30}] add dead