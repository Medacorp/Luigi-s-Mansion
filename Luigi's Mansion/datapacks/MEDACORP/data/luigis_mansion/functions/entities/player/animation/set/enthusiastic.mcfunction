execute unless entity @s[scores={Animation=7}] run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={Animation=7}] run scoreboard players set @s IdleTime -21
scoreboard players set @s Animation 7