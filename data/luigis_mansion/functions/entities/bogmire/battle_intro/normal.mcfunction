scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=100}] run teleport @s ~ ~ ~ -90 0
execute if entity @s[scores={Dialog=200}] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @s[scores={Dialog=200}] run function luigis_mansion:entities/bogmire/turn_visible
execute if entity @s[scores={Dialog=240}] positioned ~14 ~ ~ run function luigis_mansion:spawn_entities/portrait_ghost/black_bogmire/big
execute if entity @s[scores={Dialog=241..460}] run scoreboard players set @e[tag=black_bogmire,limit=1] SpawnTime 60
execute if entity @s[scores={Dialog=320}] run function luigis_mansion:entities/bogmire/turn_invisible
tag @s[scores={Dialog=460}] add intro_done
scoreboard players reset @s[scores={Dialog=460}] Dialog