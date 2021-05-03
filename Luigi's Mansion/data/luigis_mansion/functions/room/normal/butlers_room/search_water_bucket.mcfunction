execute positioned 748 11 55.0 run function luigis_mansion:blocks/dust
scoreboard players set #butlers_room_water_bucket Searched 1
data merge block 747 11 55 {LootTable:"luigis_mansion:search"}
setblock 747 11 55 minecraft:hopper[enabled=false]
tag @e[x=747.5,y=11,z=55.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=747.5,y=11,z=55.5,distance=..0.7,tag=ghost,tag=hidden] add spawn