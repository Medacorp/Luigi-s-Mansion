execute unless score #armory_chest_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #armory_chest_1 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 750.0 30 74 run function luigis_mansion:room/normal/armory/chest_1
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 750.0 29 74 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #armory_chest_1 Searched 1
data merge block 750 29 74 {LootTable:"luigis_mansion:search"}
data merge block 749 29 74 {LootTable:"luigis_mansion:search"}
tag @e[x=750.5,y=29,z=74.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=750.5,y=29,z=74.5,distance=..0.7,tag=hidden_boo] add spawn