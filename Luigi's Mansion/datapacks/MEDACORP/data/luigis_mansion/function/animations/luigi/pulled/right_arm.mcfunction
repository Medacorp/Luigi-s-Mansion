scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
teleport @s[scores={AnimationProgress=5..}] ^ ^-0.3 ^0.4
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=6}] {Pose:{Head:[-20.0f,0.0f,-40.0f]}}
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=6},tag=flipped_gravity] {Pose:{Head:[-20.0f,0.0f,140.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=6}] {Pose:{Head:[-40.0f,0.0f,-40.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=6},tag=flipped_gravity] {Pose:{Head:[-40.0f,0.0f,140.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=1..5}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProgress=6..7}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=8..9}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=11..12}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=13..14}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 8
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 5