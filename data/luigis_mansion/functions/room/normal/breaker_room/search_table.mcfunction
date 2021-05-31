execute if block 694 2 -45 minecraft:white_wool run setblock 694 2 -45 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:breaker_room/table_vacuumed"}
execute if block 694 2 -45 minecraft:structure_block run setblock 694 2 -44 minecraft:redstone_block
execute if block 704 2 -45 minecraft:white_wool run setblock 704 2 -45 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:breaker_room/table_vacuumed",mirror:"FRONT_BACK"}
execute if block 704 2 -45 minecraft:structure_block run setblock 704 2 -44 minecraft:redstone_block
execute positioned 695 2 -44.0 run function luigis_mansion:blocks/dust
scoreboard players set #breaker_room_table Searched 1
tag @e[x=695.5,y=2,z=-44.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=695.5,y=2,z=-44.5,distance=..0.7,tag=hidden_boo] add spawn