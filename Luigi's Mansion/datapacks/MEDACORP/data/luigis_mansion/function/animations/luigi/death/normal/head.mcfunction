scoreboard players add @s[scores={DeathTime=..59}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
execute if entity @s[scores={DeathTime=1..30}] run teleport @s ^ ^-1.67 ^ ~ ~
data modify entity @s[scores={DeathTime=1..}] item merge from entity @s item.components."minecraft:custom_data".model_data.dead
execute at @s[scores={DeathTime=31..40}] run teleport @s ^0.125 ^-0.1 ^
scoreboard players add @s[scores={DeathTime=31..40}] AnimationRotationZ 110