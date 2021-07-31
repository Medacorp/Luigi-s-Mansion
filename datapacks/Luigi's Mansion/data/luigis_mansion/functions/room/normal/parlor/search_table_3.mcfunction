execute if block 719 20 22 minecraft:white_wool run setblock 719 20 22 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:parlor/table_vacuumed"}
execute if block 719 20 22 minecraft:structure_block run setblock 719 20 23 minecraft:redstone_block
execute positioned 921.0 20 23 run function luigis_mansion:blocks/dust
scoreboard players set #parlor_table_3 Searched 1
tag @e[x=721.5,y=20,z=23.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=721.5,y=20,z=23.5,distance=..0.7,tag=ghost,tag=hidden] add spawn