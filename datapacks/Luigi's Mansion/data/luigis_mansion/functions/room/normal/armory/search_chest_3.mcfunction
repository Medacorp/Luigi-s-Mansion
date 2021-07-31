execute positioned 747 29 71.0 run function luigis_mansion:blocks/dust
scoreboard players set #armory_chest_3 Searched 1
data merge block 747 29 71 {LootTable:"luigis_mansion:search"}
data merge block 747 29 70 {LootTable:"luigis_mansion:search"}
tag @e[x=747.5,y=29,z=71.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=747.5,y=29,z=71.5,distance=..0.7,tag=hidden_boo] add spawn