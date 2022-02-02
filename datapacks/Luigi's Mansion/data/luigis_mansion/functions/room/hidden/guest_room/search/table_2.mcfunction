execute unless score #guest_room_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #guest_room_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #guest_room_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #guest_room_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #guest_room_table_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #guest_room_table_2 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 744 21 76 run function luigis_mansion:room/hidden/guest_room/table_2
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 744 20 76 run function luigis_mansion:blocks/dust
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 726 20 76 run function luigis_mansion:blocks/dust_no_sound
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #guest_room_table_2 Searched 1
data merge block 744 20 76 {LootTable:"luigis_mansion:search"}
tag @e[x=744.5,y=20,z=76.5,distance=..0.7,tag=ghost,tag=hidden] add spawn