execute unless score #hidden_room_chest_6 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #hidden_room_chest_6 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 738 14 35.0 run function luigis_mansion:room/normal/hidden_room/chest_6
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 738 13 35.0 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #hidden_room_chest_6 Searched 1
data merge block 738 13 35 {LootTable:"luigis_mansion:search"}
data merge block 738 13 34 {LootTable:"luigis_mansion:search"}
tag @e[x=738.5,y=13,z=35.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=738.5,y=13,z=35.5,distance=..0.7,tag=ghost,tag=hidden] add spawn