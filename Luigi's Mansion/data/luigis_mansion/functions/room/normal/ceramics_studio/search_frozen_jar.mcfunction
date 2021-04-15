execute positioned 693 121 36 run function luigis_mansion:blocks/dust
scoreboard players set #ceramics_studio_frozen_jar Searched 1
data merge block 693 121 36 {LootTable:"luigis_mansion:search"}
setblock 693 121 36 minecraft:hopper[enabled=false]
tag @e[x=693.5,y=121,z=36.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=693.5,y=121,z=36.5,distance=..0.7,tag=hidden_boo] add spawn