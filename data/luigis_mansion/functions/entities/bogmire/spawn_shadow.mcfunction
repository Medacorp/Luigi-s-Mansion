execute if block ^ ^ ^1 minecraft:air if predicate luigis_mansion:spawn_black_bogmire_chance run tag @s add spawn
execute unless block ^ ^ ^1 minecraft:air run tag @s add spawn
scoreboard players add #temp Steps 1
execute if entity @s[tag=spawn] if score #temp Steps matches 1 run tag @s remove spawn
execute if entity @s[tag=spawn] if score #temp Steps matches ..9 run function luigis_mansion:spawn_entities/portrait_ghost/black_bogmire/small
execute if entity @s[tag=spawn] if score #temp Steps matches 10.. run function luigis_mansion:spawn_entities/portrait_ghost/black_bogmire/big
execute if entity @s[tag=!spawn] positioned ^ ^ ^1 run function luigis_mansion:entities/bogmire/spawn_shadow