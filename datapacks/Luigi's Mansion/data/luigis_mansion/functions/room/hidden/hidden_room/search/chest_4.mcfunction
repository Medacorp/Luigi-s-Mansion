execute positioned 739 11 -24.0 run function luigis_mansion:blocks/dust
execute positioned 759 11 -24.0 run function luigis_mansion:blocks/dust_no_sound
scoreboard players set #hidden_room_chest_4 Searched 1
data merge block 739 11 -25 {LootTable:"luigis_mansion:search"}
data merge block 739 11 -24 {LootTable:"luigis_mansion:search"}
tag @e[x=739.5,y=11,z=-24.5,distance=..0.7,tag=ghost,tag=hidden] add spawn