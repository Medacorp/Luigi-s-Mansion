execute positioned 715 102 -9.0 run function luigis_mansion:blocks/dust
scoreboard players set #hidden_room_chest_5 Searched 1
data merge block 715 102 -10 {LootTable:"luigis_mansion:search"}
data merge block 715 102 -9 {LootTable:"luigis_mansion:search"}
tag @e[x=715.5,y=102,z=-9.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=715.5,y=102,z=-9.5,distance=..0.7,tag=ghost_marker] add spawn