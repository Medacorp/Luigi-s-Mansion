execute unless entity @s[scores={Animation=-3}] run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={Animation=-3}] run scoreboard players set @s IdleTime -11
scoreboard players set @s Animation -3