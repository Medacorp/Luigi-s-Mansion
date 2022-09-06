execute unless score #armory_chest_4 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #armory_chest_4 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 746 30 67.0 run function luigis_mansion:room/normal/armory/chest_4
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 746 29 67.0 run function luigis_mansion:blocks/dust
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 744 29 67.0 run function luigis_mansion:blocks/dust_no_sound
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #armory_chest_4 Searched 1
data merge block 746 29 67 {LootTable:"luigis_mansion:search"}
data merge block 746 29 66 {LootTable:"luigis_mansion:search"}
tag @e[x=746.5,y=29,z=67.5,distance=..0.7,tag=ghost,tag=hidden] add spawn