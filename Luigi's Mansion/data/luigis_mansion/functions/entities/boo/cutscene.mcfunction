execute if entity @s[tag=dead] run teleport @s ~ -100 ~

scoreboard players add @s ActionTime 1
teleport @s[scores={ActionTime=10}] ~ ~ ~ ~ 0
scoreboard players operation #temp Move = @s Move
execute unless entity @s[x_rotation=0] run teleport @s ~ ~0.2 ~
execute at @s[x_rotation=0] positioned ~ ~-1 ~ run function luigis_mansion:entities/boo/move_forward_no_direction
execute at @s[scores={Time=120..}] run function luigis_mansion:entities/boo/turn
execute at @s[x_rotation=0] run teleport @s ~ ~1 ~
execute if entity @s[tag=wall] run function luigis_mansion:entities/boo/warp
execute if entity @s[tag=turn_to_marker] run function luigis_mansion:entities/boo/warp/all
execute at @s run teleport @s ~ ~ ~ ~-2 ~
tag @s remove disappear
tag @s remove fleeing
scoreboard players reset #temp Move

execute store result entity @s Pose.Head[0] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.RightArm[2] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.LeftArm[2] float 0.01 run data get entity @s Rotation[1] 100