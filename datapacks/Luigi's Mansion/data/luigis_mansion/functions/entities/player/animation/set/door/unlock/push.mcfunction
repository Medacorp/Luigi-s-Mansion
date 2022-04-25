function luigis_mansion:entities/player/animation/set/none
tag @s add push_unlock_door
execute store result score @s HomeRot run data get entity @s Rotation[0]
scoreboard players set @s IdleTime -261