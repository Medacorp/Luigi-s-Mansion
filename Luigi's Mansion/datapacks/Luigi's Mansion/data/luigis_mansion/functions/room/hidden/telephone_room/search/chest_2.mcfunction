execute positioned 751.0 29 12 run function luigis_mansion:blocks/dust
scoreboard players set #telephone_room_chest_2 Searched 1
data merge block 750 29 12 {LootTable:"luigis_mansion:search"}
data merge block 751 29 12 {LootTable:"luigis_mansion:search"}
tag @e[x=750.5,y=29,z=12.5,distance=..0.7,tag=ghost,tag=hidden] add spawn