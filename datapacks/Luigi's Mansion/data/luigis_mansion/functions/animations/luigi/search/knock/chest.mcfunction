scoreboard players set @s AnimationProg 1
execute at @s run teleport @s[nbt=!{Small:1b}] ^ ^ ^-0.1
execute at @s run teleport @s[nbt={Small:1b}] ^ ^ ^-0.05
execute if score #mirrored Selected matches 0 run data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,10.0f,0.01f]}}
execute if score #mirrored Selected matches 0 run data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[0.0f,10.0f,-180.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,-10.0f,0.01f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[0.0f,-10.0f,-180.0f]}}