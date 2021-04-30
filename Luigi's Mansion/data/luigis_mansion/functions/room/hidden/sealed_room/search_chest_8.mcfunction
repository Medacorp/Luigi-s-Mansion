execute unless score #sealed_room_chest_8 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #sealed_room_chest_8 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/sealed_room/chest_8
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] 687 114 54 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #sealed_room_chest_8 Searched 1
data merge block 687 114 54 {LootTable:"luigis_mansion:search"}
tag @e[x=687.5,y=114,z=54.5,distance=..0.7,tag=ghost_marker] add spawn