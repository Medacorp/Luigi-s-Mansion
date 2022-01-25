execute positioned 679 21 58 run function luigis_mansion:blocks/dust
scoreboard players set #wardrobe_room_closet_3 Searched 1
data merge block 679 21 58 {LootTable:"luigis_mansion:search"}
tag @e[x=679.5,y=21,z=58.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=679.5,y=21,z=58.5,distance=..0.7,tag=ghost,tag=hidden] add spawn