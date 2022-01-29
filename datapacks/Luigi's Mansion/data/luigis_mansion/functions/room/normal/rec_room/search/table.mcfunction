execute unless score #rec_room_table Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #rec_room_table Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #rec_room_table Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #rec_room_table Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #rec_room_table Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #rec_room_table Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 639 12.5 -42.0 run function luigis_mansion:room/normal/rec_room/table
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 639 11 -42.0 run function luigis_mansion:blocks/dust
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 637 11 -42.0 run function luigis_mansion:blocks/dust_no_sound
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #rec_room_table Searched 1
data merge block 639 11 -43 {LootTable:"luigis_mansion:search"}
data merge block 639 11 -42 {LootTable:"luigis_mansion:search"}
tag @e[x=639.5,y=11,z=-42.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=639.5,y=11,z=-42.5,distance=..0.7,tag=ghost,tag=hidden] add spawn