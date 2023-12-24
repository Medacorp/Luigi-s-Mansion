scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-180.0f,0.0f,5.0f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[-180.0f,0.0f,-175.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..3}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProgress=4..6}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=7..9}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProgress=15}] {Pose:{Head:[-180.0f,0.0f,5.0f]}}
data merge entity @s[scores={AnimationProgress=15},tag=flipped_gravity] {Pose:{Head:[-180.0f,0.0f,-175.0f]}}
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 0