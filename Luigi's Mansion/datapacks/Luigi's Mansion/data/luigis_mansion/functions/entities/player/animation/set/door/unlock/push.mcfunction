function luigis_mansion:entities/player/animation/set/none
scoreboard players set @s Animation 21
execute store result score @s HomeRot run data get entity @s Rotation[0]
scoreboard players set @s IdleTime -261