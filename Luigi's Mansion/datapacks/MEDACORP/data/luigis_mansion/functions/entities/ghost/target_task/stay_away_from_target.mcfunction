scoreboard players set @s TargetTime 0
data remove entity @s data.target_pos
teleport @s ^ ^ ^-0.1 ~ ~
execute at @s rotated as @e[tag=target,limit=1] feet run teleport @s ~ ~ ~ -180 ~
execute store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute at @s run function luigis_mansion:entities/ghost/move_forward
execute at @s run teleport @s ~ ~ ~ ~ 0