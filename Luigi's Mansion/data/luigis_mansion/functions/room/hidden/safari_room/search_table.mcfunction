execute positioned 716 121 53 run function luigis_mansion:blocks/dust
scoreboard players set #safari_room_table Searched 1
data merge block 716 121 53 {LootTable:"luigis_mansion:search"}
tag @e[x=716.5,y=120,z=53.5,distance=..0.7,tag=ghost] add spawn
tag @e[x=716.5,y=120,z=53.5,distance=..0.7,tag=hidden_boo] add spawn