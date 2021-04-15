summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] unless score #ceramics_studio_chest Searched matches 1 run function luigis_mansion:room/hidden/ceramics_studio/chest
scoreboard players set #ceramics_studio_chest Searched 1
data merge block 690 120 -31 {LootTable:"luigis_mansion:search"}