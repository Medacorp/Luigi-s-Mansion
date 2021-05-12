execute unless score #nanas_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #nanas_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #nanas_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #nanas_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #nanas_room_closet Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #nanas_room_closet Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/nanas_room/closet
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 661 20 42 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #nanas_room_closet Searched 1
data merge block 661 20 42 {LootTable:"luigis_mansion:search"}
data merge block 662 20 42 {LootTable:"luigis_mansion:search"}
data merge block 661 21 42 {LootTable:"luigis_mansion:search"}
data merge block 662 21 42 {LootTable:"luigis_mansion:search"}
tag @e[x=661.5,y=20,z=42.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=661.5,y=20,z=42.5,distance=..0.7,tag=ghost,tag=hidden] add spawn