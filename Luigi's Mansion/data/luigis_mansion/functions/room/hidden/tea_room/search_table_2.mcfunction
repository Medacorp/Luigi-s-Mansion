execute if block 658 111 51 minecraft:white_wool run setblock 658 111 51 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:tea_room/table_vacuumed",mirror:"LEFT_RIGHT"}
execute if block 658 111 51 minecraft:structure_block run setblock 658 111 50 minecraft:redstone_block
setblock 659 112 43 minecraft:hopper[enabled=false]
execute positioned 659 111 47.0 run function luigis_mansion:blocks/dust
scoreboard players set #tea_room_table_2 Searched 1
tag @e[x=659.5,y=111,z=46.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=659.5,y=111,z=46.5,distance=..0.7,tag=ghost_marker] add spawn