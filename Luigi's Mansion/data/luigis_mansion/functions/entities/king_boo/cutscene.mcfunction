scoreboard players add @s ActionTime 1
execute unless entity @s[scores={ActionTime=1}] unless entity @s[scores={ActionTime=22..61}] run function luigis_mansion:entities/king_boo/move_forward_barrier
execute at @s[scores={ActionTime=2..11}] run teleport @s ~ ~ ~ ~ ~9
execute at @s[scores={ActionTime=62..71}] run teleport @s ~ ~ ~ ~ ~-9
execute store result entity @s Pose.Head[0] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.RightArm[2] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.LeftArm[2] float 0.01 run data get entity @s Rotation[1] 100
execute at @s[scores={ActionTime=62..}] unless block ~ ~ ~ minecraft:air run tag @s add dead
execute if entity @s[tag=dead] run playsound luigis_mansion:entity.boo.warp hostile @a[tag=same_room] ~ ~ ~ 1
teleport @s[tag=dead] ~ ~-100 ~