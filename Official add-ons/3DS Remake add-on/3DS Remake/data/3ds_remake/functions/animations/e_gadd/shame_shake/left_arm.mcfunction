scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[12.5f,0.0f,-5.01f]}}
data merge entity @s[scores={AnimationProgress=24}] {Pose:{Head:[12.5f,0.0f,-5.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..12}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 90
execute if entity @s[scores={AnimationProgress=13..24}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 90
execute if entity @s[scores={AnimationProgress=25..34}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=35..46}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=47..48}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
scoreboard players set @s[scores={AnimationProgress=48}] AnimationProgress 24
scoreboard players reset #temp Time