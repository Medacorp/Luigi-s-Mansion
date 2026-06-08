scoreboard players add @s[scores={DeathTime=..59}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
execute if entity @s[scores={DeathTime=1..30}] run teleport @s[tag=!flipped_gravity] ^ ^-2.3 ^-0.125 ~ ~
execute if entity @s[scores={DeathTime=1..30}] run teleport @s[tag=flipped_gravity] ^ ^-2.3 ^-0.125 ~ ~
execute at @s[scores={DeathTime=31..40}] unless score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^0.065 ^-0.045 ^
execute at @s[scores={DeathTime=31..40}] unless score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^-0.065 ^0.045 ^
execute at @s[scores={DeathTime=31..40}] if score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^-0.065 ^-0.045 ^
execute at @s[scores={DeathTime=31..40}] if score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^0.065 ^0.045 ^
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={DeathTime=31..40}] AnimationRotationZ 80
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={DeathTime=31..40}] AnimationRotationZ 80