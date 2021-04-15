execute positioned 684 112 -31.0 run function luigis_mansion:blocks/dust
scoreboard players set #sealed_room_chest_5 Searched 1
data merge block 684 112 -31 {LootTable:"luigis_mansion:search"}
data merge block 684 112 -32 {LootTable:"luigis_mansion:search"}
tag @e[x=684.5,y=112,z=-30.5,distance=..0.7,tag=ghost_marker] add spawn