execute positioned 700 120 8.0 run function luigis_mansion:blocks/dust
scoreboard players set #telephone_room_chest_1 Searched 1
data merge block 700 120 7 {LootTable:"luigis_mansion:search"}
data merge block 700 120 8 {LootTable:"luigis_mansion:search"}
tag @e[x=700.5,y=120,z=7.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=700.5,y=120,z=7.5,distance=..0.7,tag=hidden_boo] add spawn