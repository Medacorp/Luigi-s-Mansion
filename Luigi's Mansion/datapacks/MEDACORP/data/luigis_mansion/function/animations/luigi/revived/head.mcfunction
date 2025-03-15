scoreboard players remove @s[scores={DeathTime=1..}] DeathTime 1
data merge entity @s[scores={DeathTime=1}] {Pose:{Head:[0.0f,0.01f,0.0f]}}
data merge entity @s[scores={DeathTime=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.01f,-180.0f]}}
execute at @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^-0.03125 ^0.025 ^
execute at @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^0.03125 ^-0.025 ^
execute at @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^0.03125 ^0.025 ^
execute at @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^-0.03125 ^-0.025 ^
data modify entity @s[scores={DeathTime=40}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={DeathTime=1..15}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={DeathTime=26..40}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={DeathTime=1..15}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={DeathTime=26..40}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 4
execute store result score #temp Time run data get entity @s Pose.Head[2] 100
execute if entity @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.01 run scoreboard players remove #temp Time 275
execute if entity @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.01 run scoreboard players add #temp Time 275
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={DeathTime=59}] {Pose:{Head:[0.0f,0.01f,110.0f]}}
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={DeathTime=59},tag=flipped_gravity] {Pose:{Head:[0.0f,0.01f,-70.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={DeathTime=59}] {Pose:{Head:[0.0f,0.01f,-110.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={DeathTime=59},tag=flipped_gravity] {Pose:{Head:[0.0f,0.01f,70.0f]}}
scoreboard players reset #temp Time