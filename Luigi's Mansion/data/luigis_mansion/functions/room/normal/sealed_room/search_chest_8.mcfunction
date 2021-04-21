execute unless score #sealed_room_chest_8 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #sealed_room_chest_8 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/sealed_room/chest_8
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 698 23 -85 run function luigis_mansion:blocks/dust
scoreboard players set #sealed_room_chest_8 Searched 1
data merge block 698 23 -85 {LootTable:"luigis_mansion:search"}
tag @e[x=698.5,y=23,z=-84.5,distance=..0.7,tag=ghost_marker] add spawn