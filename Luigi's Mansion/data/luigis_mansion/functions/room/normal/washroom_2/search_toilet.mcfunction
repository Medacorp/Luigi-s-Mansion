execute positioned 668 111 34 run function luigis_mansion:blocks/dust
scoreboard players set #washroom_2_toilet Searched 1
data merge block 668 111 34 {LootTable:"luigis_mansion:search"}
tag @e[x=668.5,y=111,z=34.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=668.5,y=111,z=34.5,distance=..0.7,tag=ghost_marker] add spawn