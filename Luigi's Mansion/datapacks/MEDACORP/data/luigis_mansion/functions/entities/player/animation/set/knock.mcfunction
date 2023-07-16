execute unless entity @s[scores={Animation=42}] run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={Animation=42}] run scoreboard players set @s IdleTime -16
scoreboard players set @s Animation 42