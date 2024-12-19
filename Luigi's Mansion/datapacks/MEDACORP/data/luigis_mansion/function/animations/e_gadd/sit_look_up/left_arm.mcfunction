teleport @s ~ ~-0.35 ~ ~ ~
scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-20.0f,0.0f,-30.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=held_item] {Pose:{Head:[-25.0f,0.0f,-10.01f]}}
data merge entity @s[scores={AnimationProgress=31}] {Pose:{Head:[-20.0f,0.0f,-30.01f]}}
data merge entity @s[scores={AnimationProgress=31},tag=held_item] {Pose:{Head:[-25.0f,0.0f,-10.01f]}}
teleport @s[tag=held_item] ^ ^-0.15 ^-0.25
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..5},tag=!held_item] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=6..15},tag=!held_item] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=16..25},tag=!held_item] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=26..35},tag=!held_item] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=36..45},tag=!held_item] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=46..55},tag=!held_item] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=56..60},tag=!held_item] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 2
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 30
scoreboard players reset #temp Time