execute unless entity @s[scores={SpawnTime=0..}] run scoreboard players set @s SpawnTime 200
scoreboard players remove @s[scores={SpawnTime=1..}] SpawnTime 1
tag @s[scores={SpawnTime=100}] add can_spawn
execute unless entity @s[scores={SpawnTime=1..},tag=!new_ghost,tag=!no_hidden_move] facing entity @p[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s ActionTime 0
execute unless entity @s[tag=!burning_heart,tag=!watery_heart,tag=!frozen_heart] run tag @s[tag=stunable] remove stunable
execute if entity @s[scores={Time=40..}] run function luigis_mansion:entities/ghost/hidden/turn
execute if block ~ ~ ~ #luigis_mansion:all_ignore unless entity @a[scores={GBHCall=1..},limit=1] if entity @e[tag=same_room,distance=..7,tag=!spectator,limit=1] unless entity @s[tag=!burning_heart,tag=!frozen_heart,tag=!watery_heart] run tag @s[tag=can_spawn] add try_spawn
tag @s add me
execute if entity @e[tag=!me,tag=!hidden,tag=!model_piece,distance=..0.7] if block ~ ~ ~ #luigis_mansion:all_ignore run tag @s remove try_spawn
execute if entity @e[tag=!me,tag=!hidden,tag=!model_piece,distance=..0.7] unless entity @e[type=minecraft:item_frame,distance=..0.7] run tag @s remove try_spawn
tag @s remove me
execute if entity @a[distance=..1.5] if block ~ ~ ~ #luigis_mansion:all_ignore run tag @s remove try_spawn
tag @s[tag=try_spawn] add spawn_now
tag @s[tag=spawn] add spawn_now
tag @s[tag=spawn] remove spawn
tag @s[tag=spawn_now] add spawn
execute if entity @s[tag=!spawn,tag=!no_height_change] unless block ~ ~ ~ #luigis_mansion:all_ignore run tag @s add forced_collision
execute if entity @s[tag=!spawn,tag=!no_height_change] if block ~ ~ ~ #minecraft:slabs run tag @s add forced_collision
execute if entity @s[tag=!spawn,tag=!no_height_change] if block ~ ~ ~ #minecraft:stairs run tag @s add forced_collision
execute if entity @s[tag=!no_height_change,tag=!new_ghost] if block ~ ~-0.5 ~ #luigis_mansion:all_ignore run teleport @s ~ ~-0.5 ~
execute at @s[tag=spawn,tag=!no_height_change,tag=!new_ghost] if block ~ ~-1 ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~-0.5 ~
execute at @s[tag=spawn] unless entity @s[scores={GhostGuyCouple=-2147483648..}] run function luigis_mansion:entities/ghost/hidden/selection

execute at @s[tag=!spawn] if entity @s[scores={SpawnTime=1..},tag=!new_ghost,tag=!no_hidden_move] run function luigis_mansion:entities/ghost/hidden/move

execute at @s positioned ~ ~0.01 ~ align y run teleport @s ~ ~ ~

scoreboard players reset @s MirrorX
scoreboard players reset @s MirrorZ
scoreboard players reset @s LightX
scoreboard players reset @s LightY
scoreboard players reset @s LightZ