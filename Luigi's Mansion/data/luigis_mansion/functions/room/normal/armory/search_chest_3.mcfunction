execute positioned 701 120 48.0 run function luigis_mansion:blocks/dust
scoreboard players set #armory_chest_3 Searched 1
data merge block 701 120 48 {LootTable:"luigis_mansion:search"}
data merge block 701 120 47 {LootTable:"luigis_mansion:search"}
tag @e[x=701.5,y=120,z=48.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=701.5,y=120,z=48.5,distance=..0.7,tag=hidden_boo] add spawn