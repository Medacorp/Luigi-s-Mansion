execute if block ^ ^0.1 ^1 minecraft:air if predicate luigis_mansion:black_bogmire/spawn_chance run tag @s add spawn
execute if entity @s[tag=spawn] if score #temp Steps matches 1..2 run tag @s remove spawn
execute unless block ^ ^0.1 ^1 minecraft:air run tag @s add spawn
scoreboard players add #temp Steps 1
execute if entity @s[tag=!spawn] run function luigis_mansion:entities/bogmire/create_shadow/new
execute if entity @s[tag=spawn] if score #temp Steps matches ..19 run data modify storage luigis_mansion:data entity.speed set value 20
execute if entity @s[tag=spawn] if score #temp Steps matches ..19 run function luigis_mansion:spawn_entities/ghost/black_bogmire/small
execute if entity @s[tag=spawn] if score #temp Steps matches 20.. run function luigis_mansion:spawn_entities/ghost/black_bogmire/big
execute if entity @s[tag=spawn] run tag @e[tag=bogmires_shadow] add vanish
tag @s remove spawn
scoreboard players reset #temp Steps