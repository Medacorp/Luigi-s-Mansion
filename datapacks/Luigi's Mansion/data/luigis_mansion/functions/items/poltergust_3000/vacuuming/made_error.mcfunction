scoreboard players add @s[tag=!made_error] VacuumErrors 1
tag @s add made_error
scoreboard players add @s Pull 1
execute if entity @s[scores={Pull=20..},gamemode=!creative] run function luigis_mansion:entities/player/pulled_damage
execute if entity @s[scores={VacuumErrors=10..}] positioned ^ ^ ^1 run function luigis_mansion:entities/player/knockback/large