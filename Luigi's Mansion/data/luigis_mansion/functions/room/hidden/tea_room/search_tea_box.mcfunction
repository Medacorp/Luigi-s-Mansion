execute unless score #tea_room_tea_box Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #tea_room_tea_box Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #tea_room_tea_box Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #tea_room_tea_box Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #tea_room_tea_box Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #tea_room_tea_box Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=small_heart] positioned 659 113 47 run function luigis_mansion:spawn_entities/item/small_heart
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 659 112 47 run function luigis_mansion:blocks/dust
scoreboard players set #tea_room_tea_box Searched 1
data merge block 659 112 47 {LootTable:"luigis_mansion:search"}
tag @e[x=659.5,y=112,z=47.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=659.5,y=112,z=47.5,distance=..0.7,tag=ghost_marker] add spawn