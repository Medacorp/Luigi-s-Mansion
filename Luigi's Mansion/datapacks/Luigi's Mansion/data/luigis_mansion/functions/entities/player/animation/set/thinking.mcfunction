execute unless entity @s[scores={Animation=6}] run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={Animation=6}] run scoreboard players set @s IdleTime -61
scoreboard players set @s Animation 6