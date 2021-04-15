execute positioned 715.0 120 51 run function luigis_mansion:blocks/dust
scoreboard players set #armory_chest_2 Searched 1
data merge block 715 120 51 {LootTable:"luigis_mansion:search"}
data merge block 714 120 51 {LootTable:"luigis_mansion:search"}
tag @e[x=715.5,y=120,z=51.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=715.5,y=120,z=51.5,distance=..0.7,tag=hidden_boo] add spawn