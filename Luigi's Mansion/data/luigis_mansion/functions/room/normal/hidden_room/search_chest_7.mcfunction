execute positioned 744.0 11 33 run function luigis_mansion:blocks/dust
scoreboard players set #hidden_room_chest_7 Searched 1
data merge block 744 11 33 {LootTable:"luigis_mansion:search"}
data merge block 743 11 33 {LootTable:"luigis_mansion:search"}
tag @e[x=744.5,y=11,z=33.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=744.5,y=11,z=33.5,distance=..0.7,tag=ghost_marker] add spawn