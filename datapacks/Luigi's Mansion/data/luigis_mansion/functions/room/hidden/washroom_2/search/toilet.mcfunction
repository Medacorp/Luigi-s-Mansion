execute positioned 664 20 -29 run function luigis_mansion:blocks/dust
execute positioned 658 20 -29 run function luigis_mansion:blocks/dust_no_sound
scoreboard players set #washroom_2_toilet Searched 1
data merge block 664 20 -29 {LootTable:"luigis_mansion:search"}
tag @e[x=664.5,y=20,z=-28.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=664.5,y=20,z=-28.5,distance=..0.7,tag=ghost,tag=hidden] add spawn