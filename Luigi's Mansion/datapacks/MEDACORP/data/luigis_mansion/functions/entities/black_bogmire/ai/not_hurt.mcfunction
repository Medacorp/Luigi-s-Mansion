scoreboard players add @s SpawnTime 1

scoreboard players set @s[scores={TargetTask=0,ActionTime=0}] TargetTask 1

execute if entity @e[tag=exact_same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!vanish,tag=!appear] run function luigis_mansion:entities/black_bogmire/collide with entity @s data.entity

execute at @s[tag=vanish] run function luigis_mansion:entities/black_bogmire/vanish with entity @s data.entity
execute at @s[tag=appear] run function luigis_mansion:entities/black_bogmire/appear with entity @s data.entity