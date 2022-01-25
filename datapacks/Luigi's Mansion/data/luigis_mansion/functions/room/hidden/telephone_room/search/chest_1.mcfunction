execute positioned 738 29 -3.0 run function luigis_mansion:blocks/dust
scoreboard players set #telephone_room_chest_1 Searched 1
data merge block 738 29 -2 {LootTable:"luigis_mansion:search"}
data merge block 738 29 -3 {LootTable:"luigis_mansion:search"}
tag @e[x=738.5,y=29,z=-1.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=738.5,y=29,z=-1.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn