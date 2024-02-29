scoreboard players set @s AnimationProgress 1
execute at @s run teleport @s[nbt=!{Small:1b}] ^ ^ ^-0.1
execute at @s run teleport @s[nbt={Small:1b}] ^ ^ ^-0.05
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,10.0f,0.01f]}}
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,10.0f,-180.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,-10.0f,0.01f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,-10.0f,-180.0f]}}