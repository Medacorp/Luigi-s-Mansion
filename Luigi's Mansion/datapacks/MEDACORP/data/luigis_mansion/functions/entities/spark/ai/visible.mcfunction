function luigis_mansion:entities/ghost/ai
execute unless entity @s[tag=captured] run function luigis_mansion:entities/spark/captured

scoreboard players set @s[tag=flee] TargetTask 0
scoreboard players set @s[tag=!flee] TargetTask 4
tag @s remove flee

execute if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!dead,tag=!removed_from_existence,tag=!normal_death] run function luigis_mansion:entities/spark/collide with entity @s data.entity

execute at @s if block ~ ~-0.01 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.01 ~
scoreboard players add @s SpawnTime 1
scoreboard players set @s[tag=normal_death] SpawnTime 0
data modify entity @s[scores={SpawnTime=140}] ArmorItems[3].tag.CustomModelData set value 106
execute if entity @s[tag=!normal_death] unless entity @s[tag=!collided,tag=!in_fire,scores={SpawnTime=..199}] run function luigis_mansion:entities/spark/explode