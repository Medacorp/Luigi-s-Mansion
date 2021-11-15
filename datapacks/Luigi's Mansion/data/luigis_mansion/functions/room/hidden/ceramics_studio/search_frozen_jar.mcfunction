execute positioned 707 30 -46 run function luigis_mansion:blocks/dust
scoreboard players set #ceramics_studio_frozen_jar Searched 1
data merge block 707 30 -46 {LootTable:"luigis_mansion:search"}
setblock 707 30 -46 minecraft:hopper[enabled=false]
tag @e[x=707.5,y=30,z=-45.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=707.5,y=30,z=-45.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn