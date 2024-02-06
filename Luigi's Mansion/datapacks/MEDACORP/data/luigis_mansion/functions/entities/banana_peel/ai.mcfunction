execute unless entity @s[nbt={Pose:{Head:[0.01f]}}] run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score @s HomeRotation run data get entity @s Pose.Head[1]
execute if entity @s[tag=!was_in_vacuum] if block ~ ~-0.01 ~ #luigis_mansion:items_ignore store result entity @s Pose.Head[1] float 1 run scoreboard players add @s HomeRotation 10
execute if entity @s[tag=was_in_vacuum] run data modify entity @s Pose.Head set value [90.0f,0.0f,0.01f]
tag @s remove item_is_pulled
scoreboard players add @s SpawnTime 1
execute if entity @s[tag=thrown] run function luigis_mansion:entities/banana_peel/thrown
execute at @s unless block ~ ~-0.01 ~ #luigis_mansion:items_ignore unless block ~ ~-0.01 ~ #minecraft:slabs[type=bottom] run tag @s add hit_floor
execute at @s if block ~ ~0.4 ~ #minecraft:slabs[type=bottom] run tag @s add hit_floor
execute at @s[tag=!hit_floor,tag=!thrown] run teleport @s ~ ~-0.1 ~
execute at @s[tag=hit_floor] if block ~ ~0.5 ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~0.01 ~
execute at @s[tag=hit_floor] unless block ~ ~ ~ #luigis_mansion:items_ignore unless block ~ ~0.4 ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~0.01 ~
tag @s remove hit_floor
execute at @s if entity @e[tag=!spectator,tag=player,distance=..0.7,limit=1] run function luigis_mansion:entities/banana_peel/slip
tag @s[scores={SpawnTime=90}] add vacuumable
tag @s[scores={SpawnTime=600},tag=!eternal] add dead