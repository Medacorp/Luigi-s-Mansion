execute positioned 738 13 -29.0 run function luigis_mansion:blocks/dust
scoreboard players set #hidden_room_chest_2 Searched 1
data merge block 738 13 -30 {LootTable:"luigis_mansion:search"}
data merge block 738 13 -29 {LootTable:"luigis_mansion:search"}
tag @e[x=738.5,y=13,z=-29.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=738.5,y=13,z=-29.5,distance=..0.7,tag=ghost,tag=hidden] add spawn