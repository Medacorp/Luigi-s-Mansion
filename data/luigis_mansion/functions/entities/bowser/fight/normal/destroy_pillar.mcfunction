fill ~-2 ~ ~-2 ~2 ~3 ~2 minecraft:air replace minecraft:clay
fill ~-2 ~ ~-2 ~2 ~3 ~2 minecraft:air replace minecraft:glowstone
summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"]}
summon minecraft:marker ~ ~ ~ {Tags:["chance","poison_mushroom"]}
summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"]}
summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"]}
summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"]}
tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=poison_mushroom] run function luigis_mansion:spawn_entities/item/poison_mushroom
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] run function luigis_mansion:spawn_entities/item/small_heart
kill @e[type=minecraft:marker,tag=chance]