execute unless score #sitting_room_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #sitting_room_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #sitting_room_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #sitting_room_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #sitting_room_table_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #sitting_room_table_1 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=small_heart] positioned 717 112 20 run function luigis_mansion:spawn_entities/item/small_heart
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 717 112 19 run function luigis_mansion:blocks/dust
scoreboard players set #sitting_room_table_1 Searched 1
data merge block 717 111 19 {LootTable:"luigis_mansion:search"}
data merge block 717 112 19 {LootTable:"luigis_mansion:search"}
setblock 717 112 19 minecraft:hopper[enabled=false]
tag @e[x=717.5,y=111,z=19.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=717.5,y=111,z=19.5,distance=..0.7,tag=hidden_boo] add spawn