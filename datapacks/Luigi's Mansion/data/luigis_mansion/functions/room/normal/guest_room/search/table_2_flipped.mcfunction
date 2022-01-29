execute positioned 744 27 -61 run function luigis_mansion:blocks/dust
execute positioned 726 27 -61 run function luigis_mansion:blocks/dust_no_sound
scoreboard players set #guest_room_table_2 Searched 1
data merge block 744 26 -61 {LootTable:"luigis_mansion:search"}
tag @e[x=744.5,y=26,z=-60.5,distance=..0.7,tag=ghost,tag=hidden] add spawn