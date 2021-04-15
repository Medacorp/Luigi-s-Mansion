execute positioned 697.0 111 -34 run function luigis_mansion:blocks/dust
scoreboard players set #sealed_room_chest_6 Searched 1
data merge block 696 111 -34 {LootTable:"luigis_mansion:search"}
data merge block 697 111 -34 {LootTable:"luigis_mansion:search"}
tag @e[x=696.5,y=111,z=-33.5,distance=..0.7,tag=ghost_marker] add spawn