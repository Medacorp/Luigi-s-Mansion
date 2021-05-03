execute positioned 712.0 102 55 run function luigis_mansion:blocks/dust
scoreboard players set #mirror_room_table Searched 1
data merge block 712 102 55 {LootTable:"luigis_mansion:search"}
data merge block 711 102 55 {LootTable:"luigis_mansion:search"}
tag @e[x=712.5,y=102,z=55.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=712.5,y=102,z=55.5,distance=..0.7,tag=ghost,tag=hidden] add spawn