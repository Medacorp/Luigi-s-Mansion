execute positioned 708.0 20 -80 run function luigis_mansion:blocks/dust
scoreboard players set #sealed_room_chest_6 Searched 1
data merge block 707 20 -80 {LootTable:"luigis_mansion:search"}
data merge block 708 20 -80 {LootTable:"luigis_mansion:search"}
tag @e[x=707.5,y=20,z=-79.5,distance=..0.7,tag=ghost,tag=hidden] add spawn