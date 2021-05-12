execute unless score #telephone_room_chest_3 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #telephone_room_chest_3 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/telephone_room/chest_3
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 754.0 29 11 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #telephone_room_chest_3 Searched 1
data merge block 753 29 11 {LootTable:"luigis_mansion:search"}
data merge block 754 29 11 {LootTable:"luigis_mansion:search"}
tag @e[x=753.5,y=29,z=11.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=753.5,y=29,z=11.5,distance=..0.7,tag=hidden_boo] add spawn