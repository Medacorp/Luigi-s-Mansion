execute unless score #anteroom_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #anteroom_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #anteroom_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #anteroom_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #anteroom_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #anteroom_table_1 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=poison_mushroom] positioned 685 22 -25.0 run function luigis_mansion:spawn_entities/item/poison_mushroom
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/anteroom/table_1
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 685 21 -25.0 run function luigis_mansion:blocks/dust
scoreboard players set #anteroom_table_1 Searched 1
data merge block 685 21 -26 {LootTable:"luigis_mansion:search"}
data merge block 685 21 -25 {LootTable:"luigis_mansion:search"}
tag @e[x=685.5,y=21,z=-24.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=685.5,y=21,z=-24.5,distance=..0.7,tag=ghost_marker] add spawn