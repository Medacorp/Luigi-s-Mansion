function luigis_mansion:entities/ghost/get_target
tag @s[tag=in_vacuum] add flee
execute at @s run function luigis_mansion:entities/ghost/ai

scoreboard players set @s[tag=flee] WaitTime 0
tag @s remove flee
scoreboard players add @s WaitTime 1

execute if entity @e[tag=same_room,tag=luigi,distance=..0.7,limit=1] if entity @s[tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/pink_flying_fish/collide with entity @s data.entity

scoreboard players set @s[scores={WaitTime=1..79}] TargetTask 6
scoreboard players set @s[scores={WaitTime=80..}] TargetTask 1
scoreboard players set @s[scores={WaitTime=120}] WaitTime 0
