execute unless entity @s[scores={Animation=46}] run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={Animation=46}] run scoreboard players set @s IdleTime -16
scoreboard players set @s Animation 45