execute unless entity @s[scores={WaitTime=0..}] run scoreboard players set @s WaitTime 0
execute if entity @s[tag=!no_wind] as @e[tag=wind,scores={GhostNr=-2147483648..}] if score @s Owner = #temp GhostNr run tag @s add this_wind

execute if entity @s[tag=activated,tag=!was_activated,scores={WaitTime=0}] run function luigis_mansion:entities/clockwork_soldier/ai/mansion/normal/activate
tag @s[tag=activated,tag=!was_activated,scores={WaitTime=1}] add was_activated

execute if entity @s[tag=was_activated] run function luigis_mansion:entities/clockwork_soldier/ai/mansion/normal/in_vacuum

execute at @s[tag=!visible] run function luigis_mansion:entities/clockwork_soldier/ai/mansion/normal/get_wind
data modify entity @s[tag=was_activated,tag=!attack,tag=!complain] data.animation set value {namespace:"luigis_mansion",id:"walk"}
data remove entity @s[tag=!activated] data.animation

execute if entity @s[tag=was_activated,tag=!complain,tag=!attack,tag=!no_wind,scores={WaitTime=0}] positioned ^ ^ ^0.7 at @e[tag=same_room,tag=!spectator,tag=player,distance=..1,limit=1] run function luigis_mansion:entities/ghost/set_target_to_attack

scoreboard players set @s[tag=reached_target] WaitTime 40
tag @s remove reached_target
data modify entity @s[tag=was_activated,tag=!attack,tag=!complain,scores={WaitTime=0,TargetTask=0}] data.target_pos set from entity @e[tag=target,sort=nearest,limit=1] Pos
data modify entity @s[tag=was_activated,tag=!attack,tag=!complain,scores={WaitTime=0,TargetTask=0}] data.target_pos[1] set from entity @s Pos[1]
scoreboard players set @s[tag=was_activated,tag=!attack,tag=!complain,scores={WaitTime=0}] TargetTask 3
scoreboard players set @s[scores={ActionTime=3},tag=complain] VulnerableTime 60
tag @s[scores={VulnerableTime=1}] add vanish
scoreboard players remove @s[scores={WaitTime=1..}] WaitTime 1

execute at @s[tag=!no_wind] rotated ~ 0 positioned ^ ^ ^-0.5 run teleport @e[tag=this_wind,limit=1] ~ ~0.1 ~ ~ ~
execute store result score #temp Time run data get entity @e[tag=this_wind,limit=1] Pose.Head[2]
execute if entity @s[tag=activated,tag=!in_vacuum] unless score #mirrored Selected matches 1 store result entity @e[tag=this_wind,limit=1] Pose.Head[2] float 1 run scoreboard players add #temp Time 10
execute if entity @s[tag=activated,tag=!in_vacuum] if score #mirrored Selected matches 1 store result entity @e[tag=this_wind,limit=1] Pose.Head[2] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[tag=activated,tag=in_vacuum] unless score #mirrored Selected matches 1 store result entity @e[tag=this_wind,limit=1] Pose.Head[2] float 1 run scoreboard players remove #temp Time 40
execute if entity @s[tag=activated,tag=in_vacuum] if score #mirrored Selected matches 1 store result entity @e[tag=this_wind,limit=1] Pose.Head[2] float 1 run scoreboard players add #temp Time 40
scoreboard players reset #temp Time
tag @e[tag=this_wind,limit=1] remove this_wind