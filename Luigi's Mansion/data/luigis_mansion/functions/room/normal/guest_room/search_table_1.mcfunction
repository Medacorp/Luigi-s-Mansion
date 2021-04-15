execute positioned 707 111 -24.0 run function luigis_mansion:blocks/dust
scoreboard players set #guest_room_table_1 Searched 1
data merge block 707 111 -24 {LootTable:"luigis_mansion:search"}
data merge block 707 111 -25 {LootTable:"luigis_mansion:search"}
tag @e[x=707.5,y=111,z=-23.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=707.5,y=111,z=-23.5,distance=..0.7,tag=hidden_boo] add spawn