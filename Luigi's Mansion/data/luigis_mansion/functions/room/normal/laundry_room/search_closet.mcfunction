execute unless score #laundry_room_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #laundry_room_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #laundry_room_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #laundry_room_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #laundry_room_closet Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #laundry_room_closet Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/laundry_room/closet
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 714 11 68 run function luigis_mansion:blocks/dust
scoreboard players set #laundry_room_closet Searched 1
data merge block 714 11 68 {LootTable:"luigis_mansion:search"}
tag @e[x=714.5,y=11,z=68.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=714.5,y=11,z=68.5,distance=..0.7,tag=ghost_marker] add spawn