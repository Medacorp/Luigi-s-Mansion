execute unless score #sealed_room_chest_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #sealed_room_chest_1 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/sealed_room/chest_1
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 687 113 27 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #sealed_room_chest_1 Searched 1
data merge block 687 113 27 {LootTable:"luigis_mansion:search"}
tag @e[x=687.5,y=113,z=27.5,distance=..0.7,tag=ghost,tag=hidden] add spawn