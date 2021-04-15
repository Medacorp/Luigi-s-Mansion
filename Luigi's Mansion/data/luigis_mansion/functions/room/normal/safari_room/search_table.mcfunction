execute unless score #safari_room_table Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","big_heart"],Duration:1}
execute unless score #safari_room_table Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=big_heart] positioned 716 121 -37 run function luigis_mansion:spawn_entities/item/big_heart
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 716 121 -38 run function luigis_mansion:blocks/dust
scoreboard players set #safari_room_table Searched 1
data merge block 716 121 -38 {LootTable:"luigis_mansion:search"}
tag @e[x=716.5,y=120,z=-37.5,distance=..0.7,tag=ghost] add spawn
tag @e[x=716.5,y=120,z=-37.5,distance=..0.7,tag=hidden_boo] add spawn