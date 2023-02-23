execute unless entity @s[scores={Animation=44}] run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={Animation=44}] run scoreboard players set @s IdleTime -16
scoreboard players set @s Animation 44