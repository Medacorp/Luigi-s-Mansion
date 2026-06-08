data merge entity @s {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result entity @s Pose.Head[0] float 0.1 run scoreboard players get @s AnimationRotationX
#execute store result score #temp AnimationRotationY run data get entity @s Rotation[0] 10
#execute store result entity @s Rotation[0] float 0.1 run scoreboard players operation #temp AnimationRotationY += @s AnimationRotationY
#scoreboard players reset #temp AnimationRotationY
execute store result entity @s Pose.Head[1] float 0.1 run scoreboard players get @s AnimationRotationY
execute store result entity @s Pose.Head[2] float 0.1 run scoreboard players get @s AnimationRotationZ
execute if entity @s[type=item_display] run function luigis_mansion:animations/generic/sync2
scoreboard players operation @s AnimationOldRotationX = @s AnimationRotationX
scoreboard players operation @s AnimationOldRotationY = @s AnimationRotationY
scoreboard players operation @s AnimationOldRotationZ = @s AnimationRotationZ