execute if block ^ ^ ^1 minecraft:air run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","yes"]}
execute if block ^ ^ ^1 minecraft:air run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","no"]}
execute if block ^ ^ ^1 minecraft:air run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","no"]}
execute if block ^ ^ ^1 minecraft:air run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","no"]}
execute if block ^ ^ ^1 minecraft:air run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","no"]}
tag @e[type=minecraft:area_effect_cloud,tag=chance,distance=..0.7,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,distance=..0.7,tag=selected,tag=yes,limit=1] run tag @s add spawn
kill @e[type=minecraft:area_effect_cloud,tag=chance,distance=..0.7]
execute unless block ^ ^ ^1 minecraft:air run tag @s add spawn
scoreboard players add #temp Steps 1
execute if entity @s[tag=spawn] if score #temp Steps matches 1 run tag @s remove spawn
execute if entity @s[tag=spawn] if score #temp Steps matches ..9 run function luigis_mansion:spawn_entities/portrait_ghost/black_bogmire/small
execute if entity @s[tag=spawn] if score #temp Steps matches 10.. run function luigis_mansion:spawn_entities/portrait_ghost/black_bogmire/big
execute if entity @s[tag=!spawn] positioned ^ ^ ^1 run function luigis_mansion:entities/bogmire/spawn_shadow