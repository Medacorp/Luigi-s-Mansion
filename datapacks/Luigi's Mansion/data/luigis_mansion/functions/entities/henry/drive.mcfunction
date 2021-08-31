execute if entity @s[tag=!carless] as @e[tag=car,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_car

execute if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] if entity @s[scores={VulnerableTime=0},tag=!vanish] run function luigis_mansion:entities/henry/collide

scoreboard players add @s[tag=in_vacuum,scores={WaitTime=40..}] VacuumTime 1
scoreboard players set @s[tag=!in_vacuum_2,tag=!in_vacuum,scores={VacuumTime=1..39}] AnimationProg 0
scoreboard players set @s[tag=!in_vacuum_2,tag=!in_vacuum] VacuumTime 0
tag @s[tag=!in_vacuum] remove in_vacuum_2
tag @s[scores={VacuumTime=1}] remove laugh
scoreboard players set @s[scores={VacuumTime=1}] ActionTime 0
scoreboard players set @s[scores={VacuumTime=1}] AnimationProg 0
tag @s[scores={VacuumTime=1}] add in_vacuum_2
execute if entity @s[tag=!carless,scores={VacuumTime=40}] run function luigis_mansion:entities/henry/lose_car
tag @s[tag=carless,scores={VulnerableTime=0}] add vanish

tag @s[tag=!visible] add grab_vehicle
execute unless entity @s[tag=!carless,tag=!in_vacuum] at @s[tag=!vanish,tag=!grab_vehicle] run function luigis_mansion:animations/henry/complain
execute at @s[tag=laugh] run function luigis_mansion:entities/henry/laugh
execute at @s[tag=grab_vehicle] run function luigis_mansion:entities/henry/grab_vehicle
execute at @s[tag=!carless,tag=!in_vacuum,tag=!vanish,tag=!laugh] run function luigis_mansion:animations/henry/drive

execute at @s[tag=!vanish,scores={StunTime=0},tag=!carless] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s run tp @s ~ ~0.2 ~
execute at @s[tag=!vanish,tag=!laugh,tag=!carless,tag=!grab_vehicle,scores={StunTime=0}] run function luigis_mansion:entities/henry/move
execute at @s run tp @s ~ ~-0.2 ~

execute at @s[tag=!carless] rotated ~ 0 positioned ^ ^ ^0.4 run teleport @e[tag=this_car,limit=1] ~ ~-1.2 ~ ~ ~
tag @e[tag=this_car,limit=1] remove this_car