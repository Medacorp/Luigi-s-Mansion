execute unless score #billiards_room_table_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #billiards_room_table_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
execute unless score #billiards_room_table_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #billiards_room_table_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #billiards_room_table_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #billiards_room_table_1 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=poison_mushroom] positioned 679 12 -73 run function luigis_mansion:spawn_entities/item/room_search/poison_mushroom
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 679 12 -73 run function luigis_mansion:room/hidden/billiards_room/table_1
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 679 11 -73 run function luigis_mansion:blocks/dust
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 669 11 -73 run function luigis_mansion:blocks/dust_no_sound
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #billiards_room_table_1 Searched 1
data merge block 679 11 -73 {LootTable:"luigis_mansion:search"}
tag @e[x=679.5,y=11,z=-72.5,distance=..0.7,tag=ghost,tag=hidden] add spawn