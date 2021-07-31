execute unless score #sealed_room_chest_8 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #sealed_room_chest_8 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 698 24 100 run function luigis_mansion:room/hidden/sealed_room/chest_8
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 698 23 100 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #sealed_room_chest_8 Searched 1
data merge block 698 23 100 {LootTable:"luigis_mansion:search"}
tag @e[x=698.5,y=23,z=100.5,distance=..0.7,tag=ghost,tag=hidden] add spawn