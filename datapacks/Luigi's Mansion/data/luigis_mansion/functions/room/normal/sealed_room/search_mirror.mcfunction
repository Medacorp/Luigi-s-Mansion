fill 695 23 -82 695 24 -83 minecraft:air
fill 693 23 -82 693 24 -83 minecraft:barrier
execute positioned 694 23 -82.0 run function luigis_mansion:blocks/dust
scoreboard players set #sealed_room_mirror Searched 1
tag @e[x=94.5,y=23,z=-81.5,distance=..0.7,tag=ghost,tag=hidden] add spawn