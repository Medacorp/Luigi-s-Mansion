scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-60.0f,-70.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0