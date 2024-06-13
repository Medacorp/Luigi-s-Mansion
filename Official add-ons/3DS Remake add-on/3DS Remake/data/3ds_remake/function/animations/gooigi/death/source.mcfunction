scoreboard players add @s[scores={DeathTime=..20}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
data merge entity @s[scores={DeathTime=1}] {CustomNameVisible:0b}