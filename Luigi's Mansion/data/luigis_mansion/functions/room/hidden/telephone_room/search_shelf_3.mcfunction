execute unless score #telephone_room_shelf_3 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #telephone_room_shelf_3 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #telephone_room_shelf_3 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #telephone_room_shelf_3 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #telephone_room_shelf_3 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #telephone_room_shelf_3 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=poison_mushroom] positioned 701 123 13 run function luigis_mansion:spawn_entities/item/poison_mushroom
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 700 123 13 run function luigis_mansion:blocks/dust
scoreboard players set #telephone_room_shelf_3 Searched 1
tag @e[x=700.5,y=123,z=13.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=700.5,y=123,z=13.5,distance=..0.7,tag=hidden_boo] add spawn