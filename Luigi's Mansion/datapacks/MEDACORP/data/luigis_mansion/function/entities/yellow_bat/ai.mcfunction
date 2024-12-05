function luigis_mansion:entities/ghost/get_target
tag @s add visible
tag @s[tag=in_vacuum] add flee

execute at @s run function luigis_mansion:entities/ghost/ai

execute if entity @e[tag=same_room,tag=luigi,distance=..0.7,limit=1] if entity @s[tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/purple_bat/collide with entity @s data.entity

scoreboard players add @s[scores={TargetTask=1}] WaitTime 1
tag @s[scores={WaitTime=300..},tag=!turn_back] add reached_target
tag @s[tag=flee,tag=!turn_back] add reached_target
tag @s remove flee

execute if entity @s[scores={TargetTask=0},tag=!reached_target] at @e[tag=luigi,tag=exact_same_room,tag=vacuuming,sort=nearest,limit=1] run function luigis_mansion:entities/ghost/set_target_to_attack
scoreboard players set @s[tag=attack] TargetTask 1
tag @s remove attack
$execute if entity @s[scores={WaitTime=0,TargetTask=1}] run playsound $(namespace):entity.$(id).attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!turn_back,tag=reached_target] run function luigis_mansion:entities/purple_bat/return
scoreboard players set @s[tag=turn_back,tag=!reached_target] TargetTask 3
scoreboard players set @s[tag=turn_back,tag=reached_target] TargetTask 0
tag @s[tag=reached_target] remove turn_back
tag @s remove reached_target
execute at @s[scores={TargetTask=0}] facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~

execute unless entity @s[scores={TargetTask=0}] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"fly"}
data remove entity @s[scores={TargetTask=0}] data.animation
scoreboard players set @s[scores={TargetTask=0}] WaitTime 0