execute positioned 716 102 -23.0 run function luigis_mansion:blocks/dust
scoreboard players set #butlers_room_water_bucket Searched 1
data merge block 715 102 -24 {LootTable:"luigis_mansion:search"}
setblock 715 102 -24 minecraft:hopper[enabled=false]
tag @e[x=715.5,y=102,z=-23.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=715.5,y=102,z=-23.5,distance=..0.7,tag=ghost_marker] add spawn