summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] unless score #billiards_room_chest Searched matches 1 run function luigis_mansion:room/hidden/billiards_room/chest
scoreboard players set #billiards_room_chest Searched 1
data merge block 682 11 -67 {LootTable:"luigis_mansion:search"}