scoreboard players add @s AnimationProg 1
execute if score #mirrored Selected matches 0 run data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[-20.0f,0.0f,-20.0f]}}
execute if score #mirrored Selected matches 0 run data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[-20.0f,0.0f,160.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[-20.0f,0.0f,-40.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[-20.0f,0.0f,140.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2] 1
execute if entity @s[scores={AnimationProg=1..8}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=9..16}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 4
scoreboard players reset #temp Time
execute if score #mirrored Selected matches 0 run data merge entity @s[scores={AnimationProg=16}] {Pose:{Head:[-20.0f,0.0f,-20.0f]}}
execute if score #mirrored Selected matches 0 run data merge entity @s[scores={AnimationProg=16},tag=flipped_gravity] {Pose:{Head:[-20.0f,0.0f,160.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProg=16}] {Pose:{Head:[-20.0f,0.0f,-40.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProg=16},tag=flipped_gravity] {Pose:{Head:[-20.0f,0.0f,140.0f]}}
scoreboard players set @s[scores={AnimationProg=16..}] AnimationProg 0