execute unless score #hidden_room_chest_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #hidden_room_chest_3 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/hidden_room/chest_3
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 746 11 -27.0 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #hidden_room_chest_3 Searched 1
data merge block 746 11 -28 {LootTable:"luigis_mansion:search"}
data merge block 746 11 -27 {LootTable:"luigis_mansion:search"}
tag @e[x=746.5,y=11,z=-27.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=746.5,y=11,z=-27.5,distance=..0.7,tag=ghost,tag=hidden] add spawn