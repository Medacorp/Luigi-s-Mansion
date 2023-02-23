execute unless entity @s[scores={Animation=11}] run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={Animation=11}] run scoreboard players set @s IdleTime -42
scoreboard players set @s Animation 11