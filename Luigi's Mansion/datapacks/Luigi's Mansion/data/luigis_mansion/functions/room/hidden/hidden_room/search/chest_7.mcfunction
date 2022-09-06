execute positioned 744.0 11 -18 run function luigis_mansion:blocks/dust
execute positioned 755.0 11 -18 run function luigis_mansion:blocks/dust_no_sound
scoreboard players set #hidden_room_chest_7 Searched 1
data merge block 744 11 -18 {LootTable:"luigis_mansion:search"}
data merge block 743 11 -18 {LootTable:"luigis_mansion:search"}
tag @e[x=744.5,y=11,z=-17.5,distance=..0.7,tag=ghost,tag=hidden] add spawn