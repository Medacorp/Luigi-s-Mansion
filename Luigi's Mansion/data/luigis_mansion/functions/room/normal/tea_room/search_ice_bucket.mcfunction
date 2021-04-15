execute positioned 659 112 -28 run function luigis_mansion:blocks/dust
scoreboard players set #tea_room_ice_bucket Searched 1
data merge block 659 112 -28 {LootTable:"luigis_mansion:search"}
setblock 659 112 -28 minecraft:hopper[enabled=false]
tag @e[x=659.5,y=112,z=-27.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=659.5,y=112,z=-27.5,distance=..0.7,tag=ghost_marker] add spawn