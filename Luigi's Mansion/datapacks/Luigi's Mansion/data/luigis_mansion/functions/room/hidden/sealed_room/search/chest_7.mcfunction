execute unless score #sealed_room_chest_7 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #sealed_room_chest_7 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 703.0 22 99 run function luigis_mansion:room/hidden/sealed_room/chest_7
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 703.0 21 99 run function luigis_mansion:blocks/dust
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 686.0 21 99 run function luigis_mansion:blocks/dust_no_sound
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #sealed_room_chest_7 Searched 1
data merge block 702 21 99 {LootTable:"luigis_mansion:search"}
data merge block 703 21 99 {LootTable:"luigis_mansion:search"}
tag @e[x=702.5,y=21,z=99.5,distance=..0.7,tag=ghost,tag=hidden] add spawn