scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..7}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=10..22}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=25..30}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=31..35}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=38..47}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=50..57}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=60..62}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=63..64}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=67..69}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=72}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=95}] AnimationProgress 75