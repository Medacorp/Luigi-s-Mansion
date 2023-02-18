scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProgress=11..15}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProgress=21..25}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=26..30}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProgress=31..35}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=36..40}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 4
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0