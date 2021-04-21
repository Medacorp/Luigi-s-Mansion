execute positioned 695 21 -77.0 run function luigis_mansion:blocks/dust
scoreboard players set #sealed_room_chest_5 Searched 1
data merge block 695 21 -77 {LootTable:"luigis_mansion:search"}
data merge block 695 21 -78 {LootTable:"luigis_mansion:search"}
tag @e[x=695.5,y=21,z=-76.5,distance=..0.7,tag=ghost_marker] add spawn