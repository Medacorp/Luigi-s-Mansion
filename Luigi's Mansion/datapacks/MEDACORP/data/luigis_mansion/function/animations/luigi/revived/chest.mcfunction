scoreboard players remove @s[scores={DeathTime=1..}] DeathTime 1
data merge entity @s[scores={DeathTime=1}] {Pose:{Head:[0.0f,0.01f,0.0f]}}
data merge entity @s[scores={DeathTime=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.01f,-180.0f]}}
execute at @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^-0.03125 ^0.02375 ^
execute at @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^0.03125 ^-0.02375 ^
execute at @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^0.03125 ^0.02375 ^
execute at @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^-0.03125 ^-0.02375 ^
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 2
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={DeathTime=59}] {Pose:{Head:[0.0f,0.01f,80.0f]}}
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={DeathTime=59},tag=flipped_gravity] {Pose:{Head:[0.0f,0.01f,-100.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={DeathTime=59}] {Pose:{Head:[0.0f,0.01f,-80.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={DeathTime=59},tag=flipped_gravity] {Pose:{Head:[0.0f,0.01f,100.0f]}}
scoreboard players reset #temp Time