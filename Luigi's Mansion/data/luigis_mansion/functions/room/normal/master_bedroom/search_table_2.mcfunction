execute unless score #master_bedroom_table_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #master_bedroom_table_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #master_bedroom_table_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #master_bedroom_table_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #master_bedroom_table_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #master_bedroom_table_2 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=small_heart] positioned 696.0 112.5 39 run function luigis_mansion:spawn_entities/item/small_heart
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/master_bedroom/table_2
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 696.0 111 39 run function luigis_mansion:blocks/dust
scoreboard players set #master_bedroom_table_2 Searched 1
data merge block 696 111 39 {LootTable:"luigis_mansion:search"}
data merge block 695 111 39 {LootTable:"luigis_mansion:search"}
tag @e[x=695.5,y=111,z=39.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=695.5,y=111,z=39.5,distance=..0.7,tag=ghost_marker] add spawn