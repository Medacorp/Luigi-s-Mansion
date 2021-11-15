fill 744 30 -14 745 30 -15 minecraft:air
execute positioned 745.0 29 -15.0 run function luigis_mansion:blocks/dust
scoreboard players set #telephone_room_table Searched 1
tag @e[x=745.5,y=29,z=-14.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=745.5,y=29,z=-14.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn