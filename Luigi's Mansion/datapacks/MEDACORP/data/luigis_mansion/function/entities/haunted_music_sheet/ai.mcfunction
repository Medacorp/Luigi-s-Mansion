function luigis_mansion:entities/ghost/get_target
tag @s add visible
tag @s[scores={WaitTime=..0},tag=in_vacuum] add flee
tag @s[scores={WaitTime=..0}] remove in_fire
tag @s[scores={WaitTime=..0}] remove in_water
tag @s[scores={WaitTime=..0}] remove in_ice
execute at @s run function luigis_mansion:entities/ghost/ai
execute if entity @s[tag=dead] run function luigis_mansion:entities/haunted_music_sheet/respawn

scoreboard players set @s[tag=flee] WaitTime 1
tag @s remove flee
teleport @s[scores={WaitTime=-60}] ~ ~-1 ~
teleport @s[scores={WaitTime=0}] ~ ~1 ~
scoreboard players add @s WaitTime 1

execute if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/haunted_music_sheet/collide

scoreboard players set @s[scores={WaitTime=..0}] TargetTask 0
scoreboard players set @s[scores={WaitTime=1..80}] TargetTask 6
scoreboard players set @s[scores={WaitTime=81..}] TargetTask 1
scoreboard players set @s[scores={WaitTime=121}] WaitTime 1