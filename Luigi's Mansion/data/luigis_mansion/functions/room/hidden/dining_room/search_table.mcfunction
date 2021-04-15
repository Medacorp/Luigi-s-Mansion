execute if block 691 102 13 minecraft:white_wool run setblock 691 102 13 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:dining_room/table_vacuumed",mirror:"LEFT_RIGHT"}
execute if block 691 102 13 minecraft:structure_block run setblock 691 102 12 minecraft:redstone_block
execute positioned 692 102 3 run function luigis_mansion:blocks/dust
scoreboard players set #dining_room_table Searched 1
tag @e[x=693.5,y=102,z=13.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=693.5,y=102,z=13.5,distance=..0.7,tag=ghost_marker] add spawn