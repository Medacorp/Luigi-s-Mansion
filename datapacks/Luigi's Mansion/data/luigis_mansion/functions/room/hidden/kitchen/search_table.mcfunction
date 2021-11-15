execute if block 704 11 -74 minecraft:white_wool run setblock 704 11 -74 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:kitchen/table_vacuumed",mirror:"LEFT_RIGHT"}
execute if block 704 11 -74 minecraft:structure_block run setblock 704 12 -74 minecraft:redstone_block
execute positioned 705 11 -74.0 run function luigis_mansion:blocks/dust
scoreboard players set #kitchen_table Searched 1
tag @e[x=705.5,y=11,z=-73.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=705.5,y=11,z=-73.5,distance=..0.7,tag=ghost,tag=hidden] add spawn