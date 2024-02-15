scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..9}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=12..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=3..6}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=7..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=11..14}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=15..18}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=19..20}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0