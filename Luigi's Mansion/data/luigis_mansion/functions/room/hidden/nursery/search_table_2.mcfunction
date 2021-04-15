execute unless score #nursery_table_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #nursery_table_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #nursery_table_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #nursery_table_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #nursery_table_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #nursery_table_2 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=small_heart] positioned 707 112 -24.0 run function luigis_mansion:spawn_entities/item/small_heart
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 707 111 -24.0 run function luigis_mansion:blocks/dust
scoreboard players set #nursery_table_2 Searched 1
data merge block 707 111 -25 {LootTable:"luigis_mansion:search"}
data merge block 707 111 -24 {LootTable:"luigis_mansion:search"}
tag @e[x=707.5,y=111,z=-23.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=707.5,y=111,z=-23.5,distance=..0.7,tag=ghost_marker] add spawn