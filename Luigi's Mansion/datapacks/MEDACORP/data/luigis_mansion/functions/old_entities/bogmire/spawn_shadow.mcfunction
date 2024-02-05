execute if block ^ ^ ^1 minecraft:air if predicate luigis_mansion:spawn_black_bogmire_chance run tag @s add spawn
execute unless block ^ ^ ^1 minecraft:air run tag @s add spawn
scoreboard players add #temp Steps 1
execute if entity @s[tag=spawn] if score #temp Steps matches 1..2 run tag @s remove spawn
execute if entity @s[tag=!spawn] positioned ~ ~-1.43 ~ run function luigis_mansion:old_entities/bogmire/create_shadow
execute if entity @s[tag=spawn] if score #temp Steps matches ..19 run function luigis_mansion:spawn_entities/portrait_ghost/black_bogmire/small
execute if entity @s[tag=spawn] if score #temp Steps matches 20.. run function luigis_mansion:spawn_entities/portrait_ghost/black_bogmire/big
execute if entity @s[tag=spawn] run tag @e[tag=bogmires_shadow] add vanish
tag @s remove spawn
scoreboard players reset #temp Steps