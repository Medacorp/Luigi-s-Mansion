scoreboard players add @s[scores={DeathTime=..20}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
execute at @s[scores={DeathTime=1}] positioned ~ ~1 ~ run particle minecraft:block{block_state:{Name:"minecraft:lime_concrete"}} ~ ~ ~ 0.1 0.1 0.1 1 10
tag @s[scores={DeathTime=1}] add remove_from_existence