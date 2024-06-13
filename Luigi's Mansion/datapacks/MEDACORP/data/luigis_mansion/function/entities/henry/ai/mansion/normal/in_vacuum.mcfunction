tag @s[tag=in_vacuum,scores={WaitTime=..39}] remove in_vacuum
scoreboard players add @s[tag=in_vacuum] VacuumTime 1
scoreboard players set @s[tag=!in_vacuum] VacuumTime 0
data modify entity @s[tag=in_vacuum] data.animation set value {namespace:"luigis_mansion",id:"complain"}
execute if entity @s[scores={VacuumTime=1}] run playsound luigis_mansion:entity.henry.scream hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={VacuumTime=1}] remove laugh
scoreboard players set @s[scores={VacuumTime=1}] ActionTime 0
execute if entity @s[scores={VacuumTime=40}] run function luigis_mansion:entities/henry/ai/mansion/normal/lose_vehicle