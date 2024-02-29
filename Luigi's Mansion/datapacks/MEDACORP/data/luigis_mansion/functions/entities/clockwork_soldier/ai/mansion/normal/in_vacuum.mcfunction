scoreboard players add @s[tag=in_vacuum] VacuumTime 1
scoreboard players set @s[tag=!in_vacuum] VacuumTime 0
execute if entity @s[scores={VacuumTime=40}] run function luigis_mansion:entities/clockwork_soldier/ai/mansion/normal/lose_wind