scoreboard players add @s[scores={DeathTime=..59}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
execute if entity @s[scores={DeathTime=1..30}] run teleport @s[tag=!flipped_gravity] ^0.375 ^-1.7 ^ ~ ~
execute if entity @s[scores={DeathTime=1..30}] run teleport @s[tag=flipped_gravity] ^-0.375 ^-0.4 ^ ~ ~
execute at @s[scores={DeathTime=31..40}] unless score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^0.09 ^-0.13 ^
execute at @s[scores={DeathTime=31..40}] unless score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^-0.09 ^0.13 ^
execute at @s[scores={DeathTime=31..40}] if score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^-0.155 ^-0.06 ^
execute at @s[scores={DeathTime=31..40}] if score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^0.155 ^0.06 ^
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={DeathTime=31..40}] AnimationRotationZ 90
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={DeathTime=31..40}] AnimationRotationZ 40
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={DeathTime=31..40}] AnimationRotationX 50
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={DeathTime=31..40}] AnimationRotationX 30