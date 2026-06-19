scoreboard players add @s[scores={DeathTime=..59}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
execute if entity @s[scores={DeathTime=1..30}] run teleport @s ^-0.125 ^0.21 ^ ~ ~
execute at @s[scores={DeathTime=31..40}] run teleport @s ^-0.05 ^0.05 ^
scoreboard players add @s[scores={DeathTime=31..40}] AnimationRotationZ 80
scoreboard players add @s[scores={DeathTime=31..40}] AnimationRotationX 20