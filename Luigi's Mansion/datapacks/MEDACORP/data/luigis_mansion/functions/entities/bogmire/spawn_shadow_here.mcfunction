execute as @a[distance=..4] run function luigis_mansion:entities/player/animation/set/knockback/large
summon minecraft:lightning_bolt ~ ~ ~
execute if predicate luigis_mansion:big_black_bogmire_chance run tag @s add big
execute if entity @s[tag=!big] run function luigis_mansion:spawn_entities/portrait_ghost/black_bogmire/small
execute if entity @s[tag=big] run function luigis_mansion:spawn_entities/portrait_ghost/black_bogmire/big
tag @s remove big