execute positioned 713.0 102 -19 run function luigis_mansion:blocks/dust
scoreboard players set #hidden_room_chest_1 Searched 1
data merge block 713 102 -19 {LootTable:"luigis_mansion:search"}
data merge block 712 102 -19 {LootTable:"luigis_mansion:search"}
tag @e[x=713.5,y=102,z=-18.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=713.5,y=102,z=-18.5,distance=..0.7,tag=ghost_marker] add spawn