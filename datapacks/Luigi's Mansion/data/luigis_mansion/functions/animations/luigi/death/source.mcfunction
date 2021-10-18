scoreboard players add @s[scores={DeathTime=..60}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
execute if entity @s[scores={DeathTime=1}] run function luigis_mansion:animations/luigi/source
execute if entity @s[scores={DeathTime=1}] rotated as @s run teleport @s[tag=!flipped_gravity] ^ ^1.65 ^-.25
execute if entity @s[scores={DeathTime=1}] rotated as @s run teleport @s[tag=flipped_gravity] ^ ^-0.6 ^-.25
execute at @s[scores={DeathTime=1..20}] if score #mirrored Selected matches 0 run teleport @s[tag=!flipped_gravity] ~ ~ ~ ~-18 ~
execute at @s[scores={DeathTime=1..20}] if score #mirrored Selected matches 0 run teleport @s[tag=flipped_gravity] ~ ~ ~ ~18 ~
execute at @s[scores={DeathTime=1..20}] if score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ~ ~ ~ ~-18 ~
execute at @s[scores={DeathTime=1..20}] if score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ~ ~ ~ ~18 ~
execute at @s[scores={DeathTime=31..40}] if score #mirrored Selected matches 0 run teleport @s[tag=!flipped_gravity] ^0.125 ^-0.07 ^
execute at @s[scores={DeathTime=31..40}] if score #mirrored Selected matches 0 run teleport @s[tag=flipped_gravity] ^-0.125 ^0.07 ^
execute at @s[scores={DeathTime=31..40}] if score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^-0.125 ^-0.07 ^
execute at @s[scores={DeathTime=31..40}] if score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^0.125 ^0.07 ^