execute if block 741 20 -31 minecraft:white_wool run setblock 741 20 -31 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:sitting_room/table_vacuumed"}
execute if block 741 20 -31 minecraft:structure_block run setblock 741 20 -30 minecraft:redstone_block
execute positioned 742.0 20 -29.0 run function luigis_mansion:blocks/dust
scoreboard players set #sitting_room_table_2 Searched 1
tag @e[x=742.5,y=20,z=-28.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=742.5,y=20,z=-28.5,distance=..0.7,tag=hidden_boo] add spawn