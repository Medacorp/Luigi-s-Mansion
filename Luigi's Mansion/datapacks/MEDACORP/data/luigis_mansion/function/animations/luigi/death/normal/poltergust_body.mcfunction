scoreboard players add @s[scores={DeathTime=..59}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
execute if entity @s[scores={DeathTime=1..30}] run teleport @s ^ ^-2.3 ^-0.125 ~ ~
execute at @s[scores={DeathTime=31..40}] run teleport @s ^0.065 ^-0.045 ^
scoreboard players add @s[scores={DeathTime=31..40}] AnimationRotationZ 80