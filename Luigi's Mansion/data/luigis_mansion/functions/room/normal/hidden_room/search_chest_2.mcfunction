execute positioned 738 13 45.0 run function luigis_mansion:blocks/dust
scoreboard players set #hidden_room_chest_2 Searched 1
data merge block 738 13 45 {LootTable:"luigis_mansion:search"}
data merge block 738 13 44 {LootTable:"luigis_mansion:search"}
tag @e[x=738.5,y=13,z=45.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=738.5,y=13,z=45.5,distance=..0.7,tag=ghost_marker] add spawn