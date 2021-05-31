fill 740 20 -57 743 20 -59 minecraft:white_wool
fill 730 20 -57 727 20 -59 minecraft:white_wool
execute positioned 742.0 21 -58.0 run function luigis_mansion:blocks/dust
scoreboard players set #guest_room_bed Searched 1
tag @e[x=742.5,y=20,z=-57.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=742.5,y=20,z=-57.5,distance=..0.7,tag=hidden_boo] add spawn