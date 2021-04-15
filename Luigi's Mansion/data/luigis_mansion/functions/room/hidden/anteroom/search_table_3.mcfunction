execute unless score #anteroom_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #anteroom_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #anteroom_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #anteroom_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #anteroom_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #anteroom_table_1 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=small_heart] positioned 673 113 16.0 run function luigis_mansion:spawn_entities/item/small_heart
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 673 112 16.0 run function luigis_mansion:blocks/dust
scoreboard players set #anteroom_table_3 Searched 1
data merge block 673 112 15 {LootTable:"luigis_mansion:search"}
data merge block 673 112 16 {LootTable:"luigis_mansion:search"}
tag @e[x=673.5,y=112,z=16.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=673.5,y=112,z=16.5,distance=..0.7,tag=ghost_marker] add spawn