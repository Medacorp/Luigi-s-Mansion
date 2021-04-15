execute unless score #washroom_1_cabinet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #washroom_1_cabinet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #washroom_1_cabinet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #washroom_1_cabinet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #washroom_1_cabinet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #washroom_1_cabinet Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=poison_mushroom] positioned 667 105 -11.0 run function luigis_mansion:spawn_entities/item/poison_mushroom
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=small_heart] positioned 667 105 -11.0 run function luigis_mansion:spawn_entities/item/small_heart
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/washroom_1/cabinet
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 666 105 -11.0 run function luigis_mansion:blocks/dust
scoreboard players set #washroom_1_cabinet Searched 1
data merge block 666 105 -11 {LootTable:"luigis_mansion:search"}
data merge block 666 105 -12 {LootTable:"luigis_mansion:search"}
tag @e[x=666.5,y=105,z=-11.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=666.5,y=105,z=-11.5,distance=..0.7,tag=ghost_marker] add spawn