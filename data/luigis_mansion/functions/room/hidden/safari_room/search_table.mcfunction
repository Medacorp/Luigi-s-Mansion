execute positioned 743 30 71 run function luigis_mansion:blocks/dust
scoreboard players set #safari_room_table Searched 1
data merge block 743 30 71 {LootTable:"luigis_mansion:search"}
tag @e[x=743.5,y=29,z=71.5,distance=..0.7,tag=ghost] add spawn
tag @e[x=743.5,y=29,z=71.5,distance=..0.7,tag=hidden_boo] add spawn