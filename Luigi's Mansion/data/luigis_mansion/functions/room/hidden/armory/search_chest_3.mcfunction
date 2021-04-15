execute unless score #armory_chest_3 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #armory_chest_3 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #armory_chest_3 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #armory_chest_3 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #armory_chest_3 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #armory_chest_3 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=poison_mushroom] positioned 701 121 -32.0 run function luigis_mansion:spawn_entities/item/poison_mushroom
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 701 120 -32.0 run function luigis_mansion:blocks/dust
scoreboard players set #armory_chest_3 Searched 1
data merge block 701 120 -32 {LootTable:"luigis_mansion:search"}
data merge block 701 120 -33 {LootTable:"luigis_mansion:search"}
tag @e[x=701.5,y=120,z=-32.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=701.5,y=120,z=-32.5,distance=..0.7,tag=hidden_boo] add spawn