execute unless entity @s[scores={Animation=23}] run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={Animation=23}] store result score @s HomeRotation run data get entity @s Rotation[0]
execute unless entity @s[scores={Animation=23}] run scoreboard players set @s IdleTime -261
scoreboard players set @s Animation 23