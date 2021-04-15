execute unless score #telephone_room_closet_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #telephone_room_closet_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #telephone_room_closet_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #telephone_room_closet_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #telephone_room_closet_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #telephone_room_closet_1 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=small_heart] positioned 701 120.3 20.0 run function luigis_mansion:spawn_entities/item/small_heart
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 700 120 20.0 run function luigis_mansion:blocks/dust
scoreboard players set #telephone_room_closet_1 Searched 1
data merge block 700 120 19 {LootTable:"luigis_mansion:search"}
data merge block 700 120 20 {LootTable:"luigis_mansion:search"}
tag @e[x=700.5,y=120,z=19.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=700.5,y=120,z=19.5,distance=..0.7,tag=hidden_boo] add spawn