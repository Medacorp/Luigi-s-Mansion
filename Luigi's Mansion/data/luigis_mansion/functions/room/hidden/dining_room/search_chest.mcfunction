summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] unless score #dining_room_chest Searched matches 1 run function luigis_mansion:room/hidden/dining_room/chest
scoreboard players set #dining_room_chest Searched 1
data merge block 692 102 14 {LootTable:"luigis_mansion:search"}