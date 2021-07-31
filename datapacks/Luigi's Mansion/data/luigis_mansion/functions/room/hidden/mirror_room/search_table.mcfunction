execute positioned 741.0 11 76 run function luigis_mansion:blocks/dust
scoreboard players set #mirror_room_table Searched 1
data merge block 741 11 76 {LootTable:"luigis_mansion:search"}
data merge block 740 11 76 {LootTable:"luigis_mansion:search"}
tag @e[x=741.5,y=11,z=76.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=741.5,y=11,z=76.5,distance=..0.7,tag=ghost,tag=hidden] add spawn