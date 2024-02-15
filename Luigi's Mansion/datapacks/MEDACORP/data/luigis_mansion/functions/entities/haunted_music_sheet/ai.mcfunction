function luigis_mansion:entities/ghost/ai
execute if entity @s[tag=dead] run function luigis_mansion:entities/haunted_music_sheet/respawn

scoreboard players set @s[tag=flee] WaitTime 0
tag @s remove flee
scoreboard players add @s WaitTime 1

execute if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/haunted_music_sheet/collide

scoreboard players set @s[scores={WaitTime=1..79}] TargetTask 6
scoreboard players set @s[scores={WaitTime=80..}] TargetTask 1
scoreboard players set @s[scores={WaitTime=120}] WaitTime 0