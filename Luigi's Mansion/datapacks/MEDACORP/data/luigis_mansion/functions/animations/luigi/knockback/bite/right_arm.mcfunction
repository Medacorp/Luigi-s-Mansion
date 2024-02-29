scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-20.0f,0.0f,-40.0f]}}
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[-20.0f,0.0f,140.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-20.0f,0.0f,-20.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[-20.0f,0.0f,160.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..8}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProgress=9..16}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 4
scoreboard players reset #temp Time
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=16}] {Pose:{Head:[-20.0f,0.0f,-40.0f]}}
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=16},tag=flipped_gravity] {Pose:{Head:[-20.0f,0.0f,140.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=16}] {Pose:{Head:[-20.0f,0.0f,-20.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=16},tag=flipped_gravity] {Pose:{Head:[-20.0f,0.0f,160.0f]}}
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0