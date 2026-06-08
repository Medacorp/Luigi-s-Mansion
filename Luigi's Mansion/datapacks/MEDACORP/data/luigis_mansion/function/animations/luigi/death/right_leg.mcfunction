scoreboard players add @s[scores={DeathTime=..59}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
execute if entity @s[scores={DeathTime=1..30}] run teleport @s[tag=!flipped_gravity] ^-0.125 ^-2.34 ^ ~ ~
execute if entity @s[scores={DeathTime=1..30}] run teleport @s[tag=flipped_gravity] ^0.125 ^0.21 ^ ~ ~
execute at @s[scores={DeathTime=31..40}] unless score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^0.072 ^-0.028 ^
execute at @s[scores={DeathTime=31..40}] unless score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^-0.072 ^0.028 ^
execute at @s[scores={DeathTime=31..40}] if score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^-0.05 ^-0.05 ^
execute at @s[scores={DeathTime=31..40}] if score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^0.05 ^0.05 ^
execute if entity @s[scores={DeathTime=31..40}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationZ 50
execute if entity @s[scores={DeathTime=31..40}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationZ 80
execute if entity @s[scores={DeathTime=31..40}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={DeathTime=31..40}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 20