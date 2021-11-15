fill 746 31 -50 746 32 -49 minecraft:air
fill 744 31 -50 744 32 -49 minecraft:barrier
execute positioned 745 31 -49.0 run function luigis_mansion:blocks/dust
scoreboard players set #armory_mirror Searched 1
tag @e[x=745.5,y=31,z=-48.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=745.5,y=31,z=-48.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn