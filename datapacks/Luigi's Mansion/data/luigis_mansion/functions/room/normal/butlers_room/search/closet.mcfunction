execute unless score #butlers_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #butlers_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #butlers_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #butlers_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #butlers_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #butlers_room_closet Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 740 13 66 run function luigis_mansion:room/normal/butlers_room/closet
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 739 12 66 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #butlers_room_closet Searched 1
data merge block 739 11 67 {LootTable:"luigis_mansion:search"}
data merge block 739 14 67 {LootTable:"luigis_mansion:search"}
data merge block 739 11 65 {LootTable:"luigis_mansion:search"}
data merge block 739 14 65 {LootTable:"luigis_mansion:search"}
tag @e[x=739.5,y=11,z=66.5,distance=..0.7,tag=ghost,tag=hidden] add spawn