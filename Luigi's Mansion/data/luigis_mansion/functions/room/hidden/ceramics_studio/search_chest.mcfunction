summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] unless score #ceramics_studio_chest Searched matches 1 run function luigis_mansion:room/hidden/ceramics_studio/chest
scoreboard players set #ceramics_studio_chest Searched 1
data merge block 704 29 -56 {LootTable:"luigis_mansion:search"}