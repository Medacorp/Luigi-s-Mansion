execute positioned 707 104 -17.0 run function luigis_mansion:blocks/dust
scoreboard players set #hidden_room_chest_2 Searched 1
data merge block 707 104 -18 {LootTable:"luigis_mansion:search"}
data merge block 707 104 -17 {LootTable:"luigis_mansion:search"}
tag @e[x=707.5,y=104,z=-17.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=707.5,y=104,z=-17.5,distance=..0.7,tag=ghost_marker] add spawn