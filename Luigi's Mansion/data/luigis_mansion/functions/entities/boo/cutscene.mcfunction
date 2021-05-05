execute if entity @s[tag=dead] run teleport @s ~ -100 ~
execute unless entity @s[scores={HomeY=-2147483648..}] store result score @s HomeY run data get entity @s Pos[1] 100

scoreboard players add @s ActionTime 1
scoreboard players operation #temp Move = @s Move
execute if entity @s[scores={ActionTime=..9}] run teleport @s ~ ~0.2 ~
execute at @s[scores={ActionTime=10}] run teleport @s ~ ~ ~ ~ 0
execute at @s[scores={ActionTime=10..}] run function luigis_mansion:entities/boo/move_forward_no_direction
execute at @s[scores={Time=120..}] run function luigis_mansion:entities/boo/turn
execute if entity @s[tag=wall] run function luigis_mansion:entities/boo/warp/cutscene
tag @s remove disappear
tag @s remove fleeing
scoreboard players reset #temp Move

execute store result entity @s Pose.Head[0] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.RightArm[2] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.LeftArm[2] float 0.01 run data get entity @s Rotation[1] 100