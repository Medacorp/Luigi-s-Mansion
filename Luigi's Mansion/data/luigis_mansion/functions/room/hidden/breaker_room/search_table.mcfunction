execute if block 693 93 39 minecraft:white_wool run setblock 693 93 39 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:breaker_room/table_vacuumed",mirror:"LEFT_RIGHT"}
execute if block 693 93 39 minecraft:structure_block run setblock 693 93 38 minecraft:redstone_block
execute positioned 694 93 39.0 run function luigis_mansion:blocks/dust
scoreboard players set #breaker_room_table Searched 1
tag @e[x=694.5,y=93,z=39.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=694.5,y=93,z=39.5,distance=..0.7,tag=hidden_boo] add spawn