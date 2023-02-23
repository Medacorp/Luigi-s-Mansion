execute unless entity @s[scores={Animation=1}] run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={Animation=1}] run scoreboard players set @s IdleTime -11
scoreboard players set @s Animation 1