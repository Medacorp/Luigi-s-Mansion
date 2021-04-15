execute unless score #projection_room_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #projection_room_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #projection_room_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #projection_room_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #projection_room_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #projection_room_closet Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=small_heart] positioned 682.0 102.3 15 run function luigis_mansion:spawn_entities/item/small_heart
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/projection_room/closet
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 682.0 102 16 run function luigis_mansion:blocks/dust
scoreboard players set #projection_room_closet Searched 1
data merge block 682 102 16 {LootTable:"luigis_mansion:search"}
data merge block 681 102 16 {LootTable:"luigis_mansion:search"}
tag @e[x=682.5,y=102,z=16.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=682.5,y=102,z=16.5,distance=..0.7,tag=ghost_marker] add spawn
teleport @e[x=682.5,y=102,z=16.5,distance=..0.7,tag=spawn] 682.0 102 16