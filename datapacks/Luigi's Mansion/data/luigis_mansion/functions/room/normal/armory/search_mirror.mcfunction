fill 746 31 65 746 32 64 minecraft:air
fill 744 31 65 744 32 64 minecraft:barrier
execute positioned 745 31 65.0 run function luigis_mansion:blocks/dust
scoreboard players set #armory_mirror Searched 1
tag @e[x=745.5,y=31,z=64.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=745.5,y=31,z=64.5,distance=..0.7,tag=hidden_boo] add spawn