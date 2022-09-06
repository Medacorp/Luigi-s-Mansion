execute positioned 695 21 93.0 run function luigis_mansion:blocks/dust
execute positioned 693 21 93.0 run function luigis_mansion:blocks/dust_no_sound
scoreboard players set #sealed_room_chest_5 Searched 1
data merge block 695 21 92 {LootTable:"luigis_mansion:search"}
data merge block 695 21 93 {LootTable:"luigis_mansion:search"}
tag @e[x=695.5,y=21,z=92.5,distance=..0.7,tag=ghost,tag=hidden] add spawn