execute unless entity @s[scores={Animation=-2}] run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={Animation=-2}] run scoreboard players set @s IdleTime -11
scoreboard players set @s Animation -2