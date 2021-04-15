execute unless entity @s[nbt={Pose:{Head:[0.01f]}}] run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score @s HomeRot run data get entity @s Pose.Head[1]
execute if entity @s[nbt={OnGround:0b}] store result entity @s Pose.Head[1] float 1 run scoreboard players add @s HomeRot 10
scoreboard players add @s ActionTime 1
tag @s[scores={ActionTime=60}] add vacuumable
tag @s[scores={ActionTime=600},tag=!eternal] add dead