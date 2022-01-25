execute positioned 744.0 11 -31 run function luigis_mansion:blocks/dust
scoreboard players set #hidden_room_chest_1 Searched 1
data merge block 744 11 -31 {LootTable:"luigis_mansion:search"}
data merge block 743 11 -31 {LootTable:"luigis_mansion:search"}
tag @e[x=744.5,y=11,z=-30.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=744.5,y=11,z=-30.5,distance=..0.7,tag=ghost,tag=hidden] add spawn