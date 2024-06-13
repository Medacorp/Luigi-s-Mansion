scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-30.0f,0.0f,35.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..9}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=10..18}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..4}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 12
execute if entity @s[scores={AnimationProgress=5..8}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=11..14}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProgress=15..18}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 12
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=18..}] AnimationProgress 0