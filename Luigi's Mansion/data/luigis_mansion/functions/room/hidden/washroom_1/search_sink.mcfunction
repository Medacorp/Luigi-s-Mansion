execute positioned 666 102 -15 run function luigis_mansion:blocks/dust
scoreboard players set #washroom_1_sink Searched 1
data merge block 666 102 -15 {LootTable:"luigis_mansion:search"}
tag @e[x=666.5,y=102,z=-14.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=666.5,y=102,z=-14.5,distance=..0.7,tag=ghost,tag=hidden] add spawn