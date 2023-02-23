execute unless entity @s[scores={Animation=12}] run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={Animation=12}] run scoreboard players set @s IdleTime -41
scoreboard players set @s Animation 12