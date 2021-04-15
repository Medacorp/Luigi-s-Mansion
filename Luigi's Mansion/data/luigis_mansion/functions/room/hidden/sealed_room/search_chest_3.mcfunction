execute unless score #sealed_room_chest_3 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #sealed_room_chest_3 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/sealed_room/chest_3
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 693 112 37 run function luigis_mansion:blocks/dust
scoreboard players set #sealed_room_chest_3 Searched 1
data merge block 693 112 37 {LootTable:"luigis_mansion:search"}
tag @e[x=693.5,y=113,z=37.5,distance=..0.7,tag=ghost_marker] add spawn