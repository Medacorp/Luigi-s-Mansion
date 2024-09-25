scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
scoreboard players reset #temp Time
teleport @s[scores={AnimationProgress=5..}] ^ ^-0.1 ^
data merge entity @s[scores={AnimationProgress=6}] {Pose:{Head:[-50.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=6},tag=flipped_gravity] {Pose:{Head:[-50.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 5