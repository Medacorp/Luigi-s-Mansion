execute if entity @s[tag=!planeless] as @e[tag=plane,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_plane

execute if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] if entity @s[scores={VulnerableTime=0},tag=!vanish] run function luigis_mansion:entities/orville/collide

scoreboard players add @s[tag=in_vacuum,scores={WaitTime=40..}] VacuumTime 1
scoreboard players set @s[tag=!in_vacuum_2,tag=!in_vacuum,scores={VacuumTime=1..39}] AnimationProg 0
scoreboard players set @s[tag=!in_vacuum_2,tag=!in_vacuum] VacuumTime 0
tag @s[tag=!in_vacuum] remove in_vacuum_2
tag @s[scores={VacuumTime=1}] remove laugh
scoreboard players set @s[scores={VacuumTime=1}] ActionTime 0
scoreboard players set @s[scores={VacuumTime=1}] AnimationProg 0
tag @s[scores={VacuumTime=1}] add in_vacuum_2
execute if entity @s[tag=!planeless,scores={VacuumTime=40}] run function luigis_mansion:entities/orville/lose_plane
tag @s[tag=planeless,scores={VulnerableTime=0}] add vanish

tag @s[tag=!visible] add grab_vehicle
execute unless entity @s[tag=!planeless,tag=!in_vacuum] at @s[tag=!vanish,tag=!grab_vehicle,scores={WaitTime=40..}] run function luigis_mansion:animations/orville/complain
execute at @s[tag=laugh] run function luigis_mansion:entities/orville/laugh
execute at @s[tag=grab_vehicle] run function luigis_mansion:entities/orville/grab_vehicle
execute at @s[tag=!planeless,tag=!in_vacuum,tag=!vanish,tag=!laugh] run function luigis_mansion:animations/orville/drive

execute if entity @s[scores={WaitTime=0},tag=laugh] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s run tp @s ~ ~0.2 ~
execute at @s unless entity @s[scores={WaitTime=0},tag=laugh] at @s[tag=!vanish,tag=!planeless,tag=!grab_vehicle,scores={StunTime=0}] run function luigis_mansion:entities/orville/move
execute at @s run tp @s ~ ~-0.2 ~

execute at @s[tag=!planeless] rotated ~ 0 positioned ^ ^ ^0.4 run teleport @e[tag=this_plane,limit=1] ~ ~-1.2 ~ ~ ~
tag @e[tag=this_plane,limit=1] remove this_plane