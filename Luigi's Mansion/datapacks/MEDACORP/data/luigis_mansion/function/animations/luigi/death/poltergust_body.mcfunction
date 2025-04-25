scoreboard players add @s[scores={DeathTime=..59}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
data merge entity @s[scores={DeathTime=1}] {Pose:{Head:[0.0f,0.01f,0.0f]}}
data merge entity @s[scores={DeathTime=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.01f,-180.0f]}}
execute if entity @s[scores={DeathTime=1..30}] run teleport @s[tag=!flipped_gravity] ^ ^-2.3 ^-0.125 ~ ~
execute if entity @s[scores={DeathTime=1..30}] run teleport @s[tag=flipped_gravity] ^ ^-2.3 ^-0.125 ~ ~
execute at @s[scores={DeathTime=31..40}] unless score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^0.065 ^-0.045 ^
execute at @s[scores={DeathTime=31..40}] unless score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^-0.065 ^0.045 ^
execute at @s[scores={DeathTime=31..40}] if score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^-0.065 ^-0.045 ^
execute at @s[scores={DeathTime=31..40}] if score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^0.065 ^0.045 ^
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={DeathTime=31..40}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 8
execute if entity @s[scores={DeathTime=31..40}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 8
scoreboard players reset #temp Time