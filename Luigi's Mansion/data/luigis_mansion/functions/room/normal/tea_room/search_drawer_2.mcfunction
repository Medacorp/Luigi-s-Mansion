execute unless score #tea_room_drawer_2 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #tea_room_drawer_2 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/tea_room/drawer_2
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] 643 20 -60 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #tea_room_drawer_2 Searched 1
data merge block 641 20 -60 {LootTable:"luigis_mansion:search"}
data merge block 642 20 -60 {LootTable:"luigis_mansion:search"}
data merge block 644 20 -60 {LootTable:"luigis_mansion:search"}
data merge block 645 20 -60 {LootTable:"luigis_mansion:search"}
tag @e[x=643.5,y=20,z=-59.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=643.5,y=20,z=-59.5,distance=..0.7,tag=ghost_marker] add spawn
teleport @e[x=643.5,y=20,z=-59.5,distance=..0.7,tag=spawn] 643 20 -59