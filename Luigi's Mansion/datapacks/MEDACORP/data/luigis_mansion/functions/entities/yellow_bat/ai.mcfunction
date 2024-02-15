tag @s add visible

function luigis_mansion:entities/ghost/ai

execute if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/purple_bat/collide with entity @s data.entity

scoreboard players set @s[scores={TargetTask=0}] WaitTime 0
scoreboard players add @s[scores={TargetTask=1}] WaitTime 1
tag @s[scores={WaitTime=3000..}] add turn_back
tag @s[tag=flee,tag=!turn_back] add reached_target
tag @s remove flee

execute if entity @s[scores={TargetTask=0}] at @e[tag=exact_same_room,tag=!spectator,tag=player,tag=vacuuming,sort=nearest,limit=1] run function luigis_mansion:entities/yellow_bat/attack
execute if entity @s[tag=!turn_back,tag=reached_target] run function luigis_mansion:entities/purple_bat/return
scoreboard players set @s[tag=turn_back,tag=reached_target] TargetTask 0
execute at @s[scores={TargetTask=0}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~

execute unless entity @s[scores={TargetTask=0}] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"fly"}
data remove entity @s[scores={TargetTask=0}] data.animation