execute positioned 736 20 -45.0 run function luigis_mansion:blocks/dust
execute positioned 734 20 -45.0 run function luigis_mansion:blocks/dust_no_sound
scoreboard players set #guest_room_table_1 Searched 1
data merge block 736 20 -45 {LootTable:"luigis_mansion:search"}
data merge block 736 20 -46 {LootTable:"luigis_mansion:search"}
tag @e[x=736.5,y=20,z=-44.5,distance=..0.7,tag=ghost,tag=hidden] add spawn