execute if block 689 111 13 minecraft:white_wool run setblock 689 111 13 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:parlor/table_vacuumed",mirror:"LEFT_RIGHT"}
execute if block 689 111 13 minecraft:structure_block run setblock 689 111 12 minecraft:redstone_block
execute positioned 691.0 111 12 run function luigis_mansion:blocks/dust
scoreboard players set #parlor_table_3 Searched 1
tag @e[x=691.5,y=111,z=12.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=691.5,y=111,z=12.5,distance=..0.7,tag=ghost_marker] add spawn