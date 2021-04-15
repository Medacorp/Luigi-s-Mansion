fill 713 103 -39 713 103 -40 minecraft:air
execute positioned 713 102 -39.0 run function luigis_mansion:blocks/dust
scoreboard players set #butlers_room_ironing_table Searched 1
tag @e[x=713.5,y=102,z=-39.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=713.5,y=102,z=-39.5,distance=..0.7,tag=ghost_marker] add spawn