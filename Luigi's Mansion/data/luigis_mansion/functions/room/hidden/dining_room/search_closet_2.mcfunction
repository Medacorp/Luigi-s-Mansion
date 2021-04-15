execute unless score #dining_room_closet_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #dining_room_closet_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #dining_room_closet_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #dining_room_closet_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #dining_room_closet_2 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #dining_room_closet_2 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=poison_mushroom] positioned 688 103 12 run function luigis_mansion:spawn_entities/item/poison_mushroom
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/dining_room/closet_2
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 687 103 12 run function luigis_mansion:blocks/dust
scoreboard players set #dining_room_closet_2 Searched 1
data merge block 687 103 11 {LootTable:"luigis_mansion:search"}
data merge block 687 103 13 {LootTable:"luigis_mansion:search"}
tag @e[x=687.5,y=102,z=12.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=687.5,y=102,z=12.5,distance=..0.7,tag=ghost_marker] add spawn