execute unless score #sealed_room_chest_9 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #sealed_room_chest_9 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/sealed_room/chest_9
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 695 114 54 run function luigis_mansion:blocks/dust
scoreboard players set #sealed_room_chest_9 Searched 1
data merge block 695 114 54 {LootTable:"luigis_mansion:search"}
tag @e[x=695.5,y=114,z=54.5,distance=..0.7,tag=ghost_marker] add spawn