execute positioned 679 21 73 run function luigis_mansion:blocks/dust
execute positioned 675 21 73 run function luigis_mansion:blocks/dust_no_sound
scoreboard players set #wardrobe_room_closet_1 Searched 1
data merge block 679 21 73 {LootTable:"luigis_mansion:search"}
tag @e[x=679.5,y=21,z=73.5,distance=..0.7,tag=ghost,tag=hidden] add spawn