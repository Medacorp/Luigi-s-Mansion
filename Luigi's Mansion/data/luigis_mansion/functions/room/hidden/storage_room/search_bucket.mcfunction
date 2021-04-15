execute unless score #storage_room_bucket Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #storage_room_bucket Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #storage_room_bucket Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #storage_room_bucket Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #storage_room_bucket Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #storage_room_bucket Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=small_heart] positioned 674 102 42 run function luigis_mansion:spawn_entities/item/small_heart
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/storage_room/bucket
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 673 102 42 run function luigis_mansion:blocks/dust
scoreboard players set #storage_room_bucket Searched 1
data merge block 673 102 42 {LootTable:"luigis_mansion:search"}
setblock 673 102 42 minecraft:hopper[enabled=false]
tag @e[x=673.5,y=102,z=42.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=673.5,y=102,z=42.5,distance=..0.7,tag=ghost_marker] add spawn