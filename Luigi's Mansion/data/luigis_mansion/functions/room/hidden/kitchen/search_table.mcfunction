execute if block 692 102 -39 minecraft:white_wool run setblock 692 102 -39 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:kitchen/table_vacuumed",mirror:"LEFT_RIGHT"}
execute if block 692 102 -39 minecraft:structure_block run setblock 692 103 -39 minecraft:redstone_block
execute positioned 693 102 -39.0 run function luigis_mansion:blocks/dust
scoreboard players set #kitchen_table Searched 1
tag @e[x=693.5,y=102,z=-38.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=693.5,y=102,z=-38.5,distance=..0.7,tag=ghost_marker] add spawn