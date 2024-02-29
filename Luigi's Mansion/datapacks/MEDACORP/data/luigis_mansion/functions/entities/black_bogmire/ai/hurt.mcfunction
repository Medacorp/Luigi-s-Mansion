scoreboard players set @s TargetTask 0
scoreboard players add @s VacuumTime 1
scoreboard players set @s[tag=!in_vacuum_2,tag=!in_vacuum] VacuumTime 0
tag @s add bogmire_flee
tag @s[tag=!in_vacuum_2,tag=!in_vacuum] remove bogmire_flee
tag @s[tag=!in_vacuum] remove in_vacuum_2
tag @s[tag=in_vacuum] add in_vacuum_2
tag @s[tag=!big,scores={VacuumTime=40}] add vanish
tag @s[tag=big,scores={VacuumTime=60}] add vanish

$execute if entity @s[scores={VacuumTime=1},tag=hurt] run playsound $(namespace):entity.$(id).hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={VacuumTime=1},tag=hurt] Sound 40

data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"flee"}

data modify entity @s Rotation set from entity @a[tag=!spectator,tag=player,tag=vacuuming,sort=nearest,limit=1] Rotation
execute if score #temp Move matches 1.. at @s run function luigis_mansion:entities/ghost/move_forward