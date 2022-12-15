execute if entity @s[tag=!windless] as @e[tag=wind,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_wind

execute if entity @s[tag=activated,tag=!was_activated,scores={WaitTime=0}] run function luigis_mansion:entities/clockwork_soldier/activate
scoreboard players set @s[tag=activated,tag=!was_activated,scores={WaitTime=1}] AnimationProg 0
tag @s[tag=activated,tag=!was_activated,scores={WaitTime=1}] add was_activated

scoreboard players add @s[tag=was_activated,tag=in_vacuum] VacuumTime 1
scoreboard players set @s[tag=!in_vacuum_2,tag=!in_vacuum] VacuumTime 0
tag @s[tag=!in_vacuum] remove in_vacuum_2
tag @s[tag=in_vacuum] add in_vacuum_2
execute if entity @s[tag=!windless,scores={VacuumTime=40..}] run function luigis_mansion:entities/clockwork_soldier/lose_wind

execute at @s[tag=!vanish,scores={VulnerableTime=0},tag=!visible] run function luigis_mansion:entities/clockwork_soldier/get_wind
execute at @s[tag=activated,tag=!was_activated,tag=!vanish] run function luigis_mansion:animations/clockwork_soldier/activate
execute at @s[tag=activated,tag=was_activated,tag=!attack,tag=!vanish,scores={VulnerableTime=0}] run function luigis_mansion:animations/clockwork_soldier/walk
execute at @s[tag=!activated,tag=!vanish] run function luigis_mansion:animations/clockwork_soldier/wait
execute at @s[tag=!vanish,scores={VulnerableTime=1..}] run function luigis_mansion:entities/clockwork_soldier/complain

execute if entity @s[tag=was_activated,tag=!vanish,tag=!complain,tag=!attack,tag=!windless,scores={WaitTime=0}] positioned ^ ^ ^0.7 if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..1,limit=1] run tag @s add attack
execute if entity @s[tag=was_activated,tag=!vanish,tag=attack,tag=!windless,scores={StunTime=0}] run function luigis_mansion:entities/clockwork_soldier/attack

scoreboard players set @s[tag=attack] Distance 0
execute at @s[tag=was_activated,tag=!attack,tag=!complain,tag=!vanish,scores={Distance=0,WaitTime=0}] run function luigis_mansion:entities/clockwork_soldier/target
execute at @s[tag=was_activated,tag=!attack,tag=!complain,tag=!vanish,scores={Distance=1..,WaitTime=0}] rotated ~ 0 run function luigis_mansion:entities/clockwork_soldier/move
tag @s[scores={VulnerableTime=1}] add vanish
scoreboard players remove @s[scores={WaitTime=1..}] WaitTime 1

execute at @s[tag=!windless] rotated ~ 0 positioned ^ ^ ^-0.5 run teleport @e[tag=this_wind,limit=1] ~ ~-0.5 ~ ~ ~
execute store result score #temp Time run data get entity @e[tag=this_wind,limit=1] Pose.Head[2]
execute if entity @s[tag=activated,tag=!in_vacuum] if score #mirrored Selected matches 0 store result entity @e[tag=this_wind,limit=1] Pose.Head[2] float 1 run scoreboard players add #temp Time 10
execute if entity @s[tag=activated,tag=!in_vacuum] if score #mirrored Selected matches 1 store result entity @e[tag=this_wind,limit=1] Pose.Head[2] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[tag=activated,tag=in_vacuum] if score #mirrored Selected matches 0 store result entity @e[tag=this_wind,limit=1] Pose.Head[2] float 1 run scoreboard players remove #temp Time 40
execute if entity @s[tag=activated,tag=in_vacuum] if score #mirrored Selected matches 1 store result entity @e[tag=this_wind,limit=1] Pose.Head[2] float 1 run scoreboard players add #temp Time 40
scoreboard players reset #temp Time
tag @e[tag=this_wind,limit=1] remove this_wind

execute unless entity @s[scores={WaitTime=0..}] run scoreboard players set @s WaitTime 0
execute unless entity @s[scores={Distance=0..}] run scoreboard players set @s Distance 0