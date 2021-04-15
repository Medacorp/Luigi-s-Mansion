execute if block 658 111 -23 minecraft:white_wool run setblock 658 111 -23 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:tea_room/table_vacuumed"}
execute if block 658 111 -23 minecraft:structure_block run setblock 658 111 -22 minecraft:redstone_block
execute positioned 659 111 -19.0 run function luigis_mansion:blocks/dust
scoreboard players set #tea_room_table_1 Searched 1
tag @e[x=659.5,y=111,z=-19.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=659.5,y=111,z=-19.5,distance=..0.7,tag=ghost_marker] add spawn