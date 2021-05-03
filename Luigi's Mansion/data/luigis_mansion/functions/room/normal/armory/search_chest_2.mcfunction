execute positioned 761.0 29 74 run function luigis_mansion:blocks/dust
scoreboard players set #armory_chest_2 Searched 1
data merge block 761 29 74 {LootTable:"luigis_mansion:search"}
data merge block 760 29 74 {LootTable:"luigis_mansion:search"}
tag @e[x=761.5,y=29,z=74.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=761.5,y=29,z=74.5,distance=..0.7,tag=hidden_boo] add spawn