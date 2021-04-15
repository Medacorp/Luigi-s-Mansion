execute unless score #sealed_room_chest_7 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #sealed_room_chest_7 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/sealed_room/chest_7
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 692.0 112 -38 run function luigis_mansion:blocks/dust
scoreboard players set #sealed_room_chest_7 Searched 1
data merge block 691 112 -38 {LootTable:"luigis_mansion:search"}
data merge block 692 112 -38 {LootTable:"luigis_mansion:search"}
tag @e[x=691.5,y=112,z=-37.5,distance=..0.7,tag=ghost_marker] add spawn