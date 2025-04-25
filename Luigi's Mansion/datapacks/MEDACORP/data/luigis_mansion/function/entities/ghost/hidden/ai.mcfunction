execute unless entity @s[scores={SpawnTime=0..}] run scoreboard players set @s SpawnTime 200
scoreboard players remove @s[scores={SpawnTime=1..}] SpawnTime 1
tag @s[scores={SpawnTime=..100},tag=!only_forced_spawn,tag=!hiding_in_furniture] add can_spawn
execute at @s unless entity @s[scores={SpawnTime=1..},tag=!new_ghost,tag=!no_hidden_move] facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={Time=40..}] run function luigis_mansion:entities/ghost/hidden/turn
tag @s add me
execute if block ~ ~ ~ #luigis_mansion:all_ignore unless entity @s[tag=!burning_heart,tag=!frozen_heart,tag=!watery_heart,tag=!basher] as @e[tag=same_room,distance=..7,tag=luigi,limit=1] unless entity @s[tag=luigi,nbt=!{data:{animation:{}}},tag=!idle,tag=!animation_may_move] run tag @e[tag=me,tag=can_spawn,limit=1] add try_spawn
execute if entity @e[tag=!me,tag=!hidden,tag=!model_piece,tag=!furniture,distance=..0.7,limit=1] if block ~ ~ ~ #luigis_mansion:all_ignore run tag @s remove try_spawn
execute if entity @e[tag=!me,tag=!hidden,tag=!model_piece,tag=!furniture,distance=..0.7,limit=1] unless entity @e[type=minecraft:item_frame,distance=..0.7,limit=1] run tag @s remove try_spawn
tag @s remove me
execute if entity @e[tag=luigi,distance=..1.5] if block ~ ~ ~ #luigis_mansion:all_ignore run tag @s remove try_spawn
tag @s[tag=try_spawn] add spawn
execute if entity @s[tag=!spawn,tag=!no_height_change,tag=!new_ghost,tag=!ceiling_ghost] unless block ~ ~ ~ #luigis_mansion:all_ignore run tag @s add forced_collision
execute if entity @s[tag=!spawn,tag=!no_height_change,tag=!new_ghost,tag=!ceiling_ghost] if block ~ ~ ~ #minecraft:slabs run tag @s add forced_collision
execute if entity @s[tag=!spawn,tag=!no_height_change,tag=!new_ghost,tag=!ceiling_ghost] if block ~ ~ ~ #minecraft:stairs run tag @s add forced_collision
execute if entity @s[tag=!no_height_change,tag=!new_ghost,tag=!no_hidden_move,tag=!ceiling_ghost] if block ~ ~-0.5 ~ #luigis_mansion:all_ignore run teleport @s ~ ~-0.5 ~
execute at @s[tag=spawn,tag=!no_height_change,tag=!new_ghost,tag=!no_hidden_move,tag=!ceiling_ghost] if block ~ ~-1 ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~-0.5 ~
execute at @s[tag=spawn] run function luigis_mansion:entities/ghost/hidden/appear
execute at @s[tag=spawned_ghost_heart] run function luigis_mansion:entities/ghost/heart/remove

execute at @s[tag=!spawn] if entity @s[scores={SpawnTime=1..},tag=!new_ghost,tag=!no_hidden_move] run function luigis_mansion:entities/ghost/hidden/move

execute at @s[tag=!spawn,tag=!new_ghost] positioned ~ ~0.01 ~ align y run teleport @s ~ ~ ~
tag @s remove spawn
scoreboard players reset @s MirrorX
scoreboard players reset @s MirrorZ
scoreboard players reset @s LightX
scoreboard players reset @s LightY
scoreboard players reset @s LightZ
scoreboard players set @s TargetTask 0
scoreboard players set @s ActionTime 0