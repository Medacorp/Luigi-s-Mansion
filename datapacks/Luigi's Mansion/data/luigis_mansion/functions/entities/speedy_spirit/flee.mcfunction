execute store result entity @s Rotation[0] float 0.01 run data get entity @p[tag=!spectator] Rotation[0] 100
execute store result entity @s Rotation[1] float -0.01 run data get entity @p[tag=!spectator] Rotation[1] 100
execute at @s run teleport @s ~ ~ ~ ~-180 ~
execute if score #temp Move matches 1.. at @s run function luigis_mansion:entities/ghost/move_forward