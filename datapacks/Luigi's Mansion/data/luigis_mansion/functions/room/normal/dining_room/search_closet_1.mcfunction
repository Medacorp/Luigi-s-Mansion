execute positioned 699 12 52 run function luigis_mansion:blocks/dust
scoreboard players set #dining_room_closet_1 Searched 1
data merge block 699 12 53 {LootTable:"luigis_mansion:search"}
data merge block 699 12 51 {LootTable:"luigis_mansion:search"}
tag @e[x=699.5,y=11,z=52.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=699.5,y=11,z=52.5,distance=..0.7,tag=ghost,tag=hidden] add spawn