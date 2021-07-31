fill 695 23 98 695 24 97 minecraft:air
fill 693 23 98 693 24 97 minecraft:barrier
execute positioned 694 23 98.0 run function luigis_mansion:blocks/dust
scoreboard players set #sealed_room_mirror Searched 1
tag @e[x=694.5,y=23,z=97.5,distance=..0.7,tag=ghost,tag=hidden] add spawn