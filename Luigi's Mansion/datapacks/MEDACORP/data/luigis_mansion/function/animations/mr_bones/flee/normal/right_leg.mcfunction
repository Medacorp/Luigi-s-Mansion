scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..3}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 20
execute if entity @s[scores={AnimationProgress=4..9}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 20
execute if entity @s[scores={AnimationProgress=10..12}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 20
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=12..}] AnimationProgress 0