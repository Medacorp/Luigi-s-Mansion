execute unless entity @s[scores={Animation=43}] run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={Animation=43}] run scoreboard players set @s IdleTime -16
scoreboard players set @s Animation 43