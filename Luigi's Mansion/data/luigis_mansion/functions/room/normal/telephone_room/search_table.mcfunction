fill 706 121 19 707 121 20 minecraft:air
execute positioned 707.0 120 20.0 run function luigis_mansion:blocks/dust
scoreboard players set #telephone_room_table Searched 1
tag @e[x=707.5,y=120,z=20.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=707.5,y=120,z=20.5,distance=..0.7,tag=hidden_boo] add spawn