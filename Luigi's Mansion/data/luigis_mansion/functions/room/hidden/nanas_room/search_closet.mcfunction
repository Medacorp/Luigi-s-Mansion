execute unless score #nanas_room_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #nanas_room_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #nanas_room_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #nanas_room_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #nanas_room_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #nanas_room_closet Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/nanas_room/closet
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 662 111 23 run function luigis_mansion:blocks/dust
scoreboard players set #nanas_room_closet Searched 1
data merge block 662 111 23 {LootTable:"luigis_mansion:search"}
data merge block 663 111 23 {LootTable:"luigis_mansion:search"}
data merge block 662 112 23 {LootTable:"luigis_mansion:search"}
data merge block 663 112 23 {LootTable:"luigis_mansion:search"}
tag @e[x=662.5,y=111,z=23.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=662.5,y=111,z=23.5,distance=..0.7,tag=ghost_marker] add spawn