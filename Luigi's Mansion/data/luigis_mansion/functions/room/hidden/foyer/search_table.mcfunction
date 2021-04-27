execute unless score #foyer_table Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #foyer_table Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #foyer_table Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #foyer_table Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #foyer_table Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","big_heart"],Duration:1}
execute unless score #foyer_table Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=big_heart] positioned 746 12.5 2 run function luigis_mansion:spawn_entities/item/big_heart
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=small_heart] positioned 746 12.5 2 run function luigis_mansion:spawn_entities/item/small_heart
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 746 11 2 run function luigis_mansion:blocks/dust
scoreboard players set #foyer_table Searched 1
data merge block 746 11 2 {LootTable:"luigis_mansion:search"}