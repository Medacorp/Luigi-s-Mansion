scoreboard players add @s[scores={DeathTime=..59}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
execute if entity @s[scores={DeathTime=1..30}] run teleport @s ^-0.375 ^-0.4 ^ ~ ~
execute at @s[scores={DeathTime=31..40}] run teleport @s ^0.155 ^0.06 ^
scoreboard players remove @s[scores={DeathTime=31..40}] AnimationRotationZ 40
scoreboard players remove @s[scores={DeathTime=31..40}] AnimationRotationX 30