scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-50.0f,10.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[-50.0f,10.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..4}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=5..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=9..12}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=13..16}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProgress=16}] {Pose:{Head:[-50.0f,10.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=16},tag=flipped_gravity] {Pose:{Head:[-50.0f,10.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0