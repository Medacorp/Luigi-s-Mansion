execute positioned 643 21 -48 run function luigis_mansion:blocks/dust
scoreboard players set #tea_room_ice_bucket Searched 1
data merge block 643 21 -48 {LootTable:"luigis_mansion:search"}
setblock 643 21 -48 minecraft:hopper[enabled=false]
tag @e[x=643.5,y=21,z=-47.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=643.5,y=21,z=-47.5,distance=..0.7,tag=ghost,tag=hidden] add spawn