execute positioned 713.0 120 -7 run function luigis_mansion:blocks/dust
scoreboard players set #telephone_room_chest_2 Searched 1
data merge block 712 120 -7 {LootTable:"luigis_mansion:search"}
data merge block 713 120 -7 {LootTable:"luigis_mansion:search"}
tag @e[x=712.5,y=120,z=-6.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=712.5,y=120,z=-6.5,distance=..0.7,tag=hidden_boo] add spawn