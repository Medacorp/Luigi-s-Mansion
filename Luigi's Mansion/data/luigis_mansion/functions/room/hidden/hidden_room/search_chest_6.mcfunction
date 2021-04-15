execute unless score #hidden_room_chest_6 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #hidden_room_chest_6 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/hidden_room/chest_6
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 707 104 -7.0 run function luigis_mansion:blocks/dust
scoreboard players set #hidden_room_chest_6 Searched 1
data merge block 707 104 -8 {LootTable:"luigis_mansion:search"}
data merge block 707 104 -7 {LootTable:"luigis_mansion:search"}
tag @e[x=707.5,y=104,z=-7.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=707.5,y=104,z=-7.5,distance=..0.7,tag=ghost_marker] add spawn