scoreboard players set @s TargetTime 0
data remove entity @s data.target_pos
execute at @s rotated as @e[tag=target,limit=1] run teleport @s ~ ~ ~ ~-180 ~
execute if entity @s[tag=!reached_target] store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
tag @s remove reached_target
execute at @s run function luigis_mansion:entities/ghost/move_forward
execute if score #temp Move matches -1 run tag @s add reached_target