execute positioned 746 11 37.0 run function luigis_mansion:blocks/dust
scoreboard players set #hidden_room_chest_5 Searched 1
data merge block 746 11 37 {LootTable:"luigis_mansion:search"}
data merge block 746 11 36 {LootTable:"luigis_mansion:search"}
tag @e[x=746.5,y=11,z=37.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=746.5,y=11,z=37.5,distance=..0.7,tag=ghost,tag=hidden] add spawn