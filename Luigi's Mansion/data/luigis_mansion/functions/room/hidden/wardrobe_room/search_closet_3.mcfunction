execute positioned 674 112 -5 run function luigis_mansion:blocks/dust
scoreboard players set #wardrobe_room_closet_3 Searched 1
data merge block 674 112 -5 {LootTable:"luigis_mansion:search"}
tag @e[x=674.5,y=112,z=-4.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=674.5,y=112,z=-4.5,distance=..0.7,tag=ghost_marker] add spawn