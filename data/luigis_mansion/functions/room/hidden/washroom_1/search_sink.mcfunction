execute positioned 662 11 -25 run function luigis_mansion:blocks/dust
scoreboard players set #washroom_1_sink Searched 1
data merge block 662 102 -25 {LootTable:"luigis_mansion:search"}
tag @e[x=662.5,y=11,z=-24.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=662.5,y=11,z=-24.5,distance=..0.7,tag=ghost,tag=hidden] add spawn