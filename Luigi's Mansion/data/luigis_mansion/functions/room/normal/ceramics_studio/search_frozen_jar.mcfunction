execute positioned 707 30 61 run function luigis_mansion:blocks/dust
scoreboard players set #ceramics_studio_frozen_jar Searched 1
data merge block 707 30 61 {LootTable:"luigis_mansion:search"}
setblock 707 30 61 minecraft:hopper[enabled=false]
tag @e[x=707.5,y=30,z=61.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=707.5,y=30,z=61.5,distance=..0.7,tag=hidden_boo] add spawn