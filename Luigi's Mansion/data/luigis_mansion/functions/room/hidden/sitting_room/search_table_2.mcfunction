execute if block 712 111 29 minecraft:white_wool run setblock 712 111 29 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:sitting_room/table_vacuumed",mirror:"LEFT_RIGHT"}
execute if block 712 111 29 minecraft:structure_block run setblock 712 111 28 minecraft:redstone_block
execute positioned 713.0 111 28.0 run function luigis_mansion:blocks/dust
scoreboard players set #sitting_room_table_2 Searched 1
tag @e[x=713.5,y=111,z=27.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=713.5,y=111,z=27.5,distance=..0.7,tag=hidden_boo] add spawn