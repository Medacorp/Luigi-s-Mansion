scoreboard players remove @s[scores={DeathTime=1..}] DeathTime 1
data merge entity @s[scores={DeathTime=1}] {Pose:{Head:[0.0f,0.01f,0.0f]}}
data merge entity @s[scores={DeathTime=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.01f,-180.0f]}}
execute at @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^-0.018 ^0.007 ^
execute at @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^0.018 ^-0.007 ^
execute at @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^0.0125 ^0.0125 ^
execute at @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^-0.0125 ^-0.0125 ^
execute store result score #temp Time run data get entity @s Pose.Head[2] 100
execute if entity @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.01 run scoreboard players remove #temp Time 125
execute if entity @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 0.01 run scoreboard players add #temp Time 200
execute store result score #temp Time run data get entity @s Pose.Head[0] 100
execute if entity @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 0.01 run scoreboard players add #temp Time 100
execute if entity @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 0.01 run scoreboard players remove #temp Time 50
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={DeathTime=59}] {Pose:{Head:[-40.0f,0.01f,50.0f]}}
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={DeathTime=59},tag=flipped_gravity] {Pose:{Head:[-40.0f,0.01f,-130.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={DeathTime=59}] {Pose:{Head:[20.0f,0.01f,-80.0f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={DeathTime=59},tag=flipped_gravity] {Pose:{Head:[20.0f,0.01f,100.0f]}}
scoreboard players reset #temp Time