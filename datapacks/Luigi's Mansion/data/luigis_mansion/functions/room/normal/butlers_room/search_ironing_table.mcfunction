fill 745 12 70 745 12 71 minecraft:air
execute positioned 745 11 71.0 run function luigis_mansion:blocks/dust
scoreboard players set #butlers_room_ironing_table Searched 1
tag @e[x=745.5,y=11,z=71.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=745.5,y=11,z=71.5,distance=..0.7,tag=ghost,tag=hidden] add spawn