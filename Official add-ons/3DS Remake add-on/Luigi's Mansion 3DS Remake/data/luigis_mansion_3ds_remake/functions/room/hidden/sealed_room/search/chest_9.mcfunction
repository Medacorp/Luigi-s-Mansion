execute unless score #sealed_room_chest_9 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #sealed_room_chest_9 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 706 24 -85 run function luigis_mansion_3ds_remake:room/hidden/sealed_room/chest_9
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 706 23 -85 run function luigis_mansion:blocks/dust
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 682 23 -85 run function luigis_mansion:blocks/dust_no_sound
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #sealed_room_chest_9 Searched 1
data merge block 706 23 -85 {LootTable:"luigis_mansion:search"}
tag @e[x=706.5,y=23,z=-84.5,distance=..0.7,tag=ghost,tag=hidden] add spawn