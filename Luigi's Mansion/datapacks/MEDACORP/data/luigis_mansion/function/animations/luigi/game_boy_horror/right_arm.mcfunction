scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-30.0f,-10.0f,0.01f]}}
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[-30.0f,-10.0f,-180.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-50.0f,-10.0f,0.01f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[-50.0f,-10.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=25..26}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=27..28}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=41..42}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=43..44}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=1..4}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProgress=5..8}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=9..12}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=13..16}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProgress=25..26}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=27..28}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..6}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=11..16}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 5
scoreboard players set @s[scores={AnimationProgress=50}] AnimationProgress 0
scoreboard players reset #temp Time