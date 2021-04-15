execute unless score #sealed_room_chest_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #sealed_room_chest_1 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/sealed_room/chest_1
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 687 113 -12 run function luigis_mansion:blocks/dust
scoreboard players set #sealed_room_chest_1 Searched 1
data merge block 687 113 -12 {LootTable:"luigis_mansion:search"}
tag @e[x=687.5,y=113,z=-11.5,distance=..0.7,tag=ghost_marker] add spawn