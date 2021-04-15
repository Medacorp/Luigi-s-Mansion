summon minecraft:lightning_bolt
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","yes"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","no"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","no"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","no"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","no"]}
tag @e[type=minecraft:area_effect_cloud,tag=chance,distance=..0.7,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,distance=..0.7,tag=selected,tag=yes,limit=1] run tag @s add big
kill @e[type=minecraft:area_effect_cloud,tag=chance,distance=..0.7]
execute if entity @s[tag=!big] run function luigis_mansion:spawn_entities/portrait_ghost/black_bogmire/small
execute if entity @s[tag=big] run function luigis_mansion:spawn_entities/portrait_ghost/black_bogmire/big
tag @s remove big