scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[-30.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1..16}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 30
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProg=16}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=16},tag=flipped_gravity] {Pose:{Head:[30.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProg=16..}] AnimationProg 0