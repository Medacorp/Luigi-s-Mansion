scoreboard players operation #temp PassiveNr = @s PassiveNr
execute as @e[tag=mario_body] if score @s PassiveNr = #temp PassiveNr run tag @s add this_mario_body

execute if entity @s[tag=portrificationizing,tag=!remove_from_existence] run function luigis_mansion:entities/mario/portrificationizing
execute if entity @s[tag=normal] run function luigis_mansion:entities/mario/normal

execute at @s[tag=panic] run function luigis_mansion:animations/mario/panic
execute at @s[tag=shot_out] run function luigis_mansion:animations/mario/shot_out
execute at @s[tag=stuck] run function luigis_mansion:animations/mario/stuck
execute at @s[tag=dizzy] run function luigis_mansion:animations/mario/dizzy

execute unless entity @s[tag=!dead,tag=!remove_from_existence] run teleport @e[tag=this_mario_body] ~ -100 ~
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @e[tag=this_mario_body] add dead

scoreboard players reset #temp PassiveNr
tag @e[tag=this_mario_body,limit=1] remove this_mario_body