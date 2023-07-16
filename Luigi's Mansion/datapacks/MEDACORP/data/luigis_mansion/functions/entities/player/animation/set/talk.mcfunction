execute unless entity @s[scores={Animation=25}] run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={Animation=25}] run scoreboard players set @s IdleTime -41
scoreboard players set @s Animation 25