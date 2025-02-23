scoreboard players set @s TargetTask 0
scoreboard players add @s VacuumTime 1
scoreboard players set @s[tag=!in_vacuum,tag=!succumb,tag=!vanish] VacuumTime 0
tag @s[tag=!in_vacuum] remove in_vacuum_2
tag @s[tag=in_vacuum] add in_vacuum_2
tag @s[tag=!big,scores={VacuumTime=40}] add succumb
tag @s[tag=big,scores={VacuumTime=60}] add succumb

$execute if entity @s[scores={VacuumTime=1}] run playsound $(namespace):entity.$(id).hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={VacuumTime=1}] Sound 40

data modify entity @s[tag=!succumb,tag=!vanish] data.animation set value {namespace:"luigis_mansion",id:"flee"}

execute rotated as @e[tag=luigi,tag=vacuuming_me,sort=nearest,limit=1] rotated ~ 0 run teleport @s[tag=!succumb,tag=!vanish] ~ ~ ~ ~ ~
execute if score #temp Move matches 1.. at @s[tag=!succumb,tag=!vanish] run function luigis_mansion:entities/ghost/move_forward