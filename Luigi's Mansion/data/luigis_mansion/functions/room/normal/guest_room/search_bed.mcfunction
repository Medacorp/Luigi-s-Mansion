fill 711 111 -36 714 111 -38 minecraft:white_wool
execute positioned 713.0 112 -37.0 run function luigis_mansion:blocks/dust
scoreboard players set #guest_room_bed Searched 1
tag @e[x=713.5,y=111,z=-36.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=713.5,y=111,z=-36.5,distance=..0.7,tag=hidden_boo] add spawn