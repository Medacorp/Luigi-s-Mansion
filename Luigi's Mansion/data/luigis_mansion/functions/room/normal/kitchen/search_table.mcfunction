execute if block 704 11 89 minecraft:white_wool run setblock 704 11 89 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:kitchen/table_vacuumed"}
execute if block 704 11 89 minecraft:structure_block run setblock 704 12 89 minecraft:redstone_block
execute positioned 705 11 90.0 run function luigis_mansion:blocks/dust
scoreboard players set #kitchen_table Searched 1
tag @e[x=705.5,y=11,z=89.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=705.5,y=11,z=89.5,distance=..0.7,tag=ghost,tag=hidden] add spawn