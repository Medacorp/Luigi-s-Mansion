execute unless score #armory_chest_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #armory_chest_1 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/armory/chest_1
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 704.0 120 51 run function luigis_mansion:blocks/dust
scoreboard players set #armory_chest_1 Searched 1
data merge block 704 120 51 {LootTable:"luigis_mansion:search"}
data merge block 703 120 51 {LootTable:"luigis_mansion:search"}
tag @e[x=704.5,y=120,z=51.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=704.5,y=120,z=51.5,distance=..0.7,tag=hidden_boo] add spawn