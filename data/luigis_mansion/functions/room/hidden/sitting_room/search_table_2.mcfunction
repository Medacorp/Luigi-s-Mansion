execute if block 741 20 36 minecraft:white_wool run setblock 741 20 36 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:sitting_room/table_vacuumed",mirror:"LEFT_RIGHT"}
execute if block 741 20 36 minecraft:structure_block run setblock 741 20 35 minecraft:redstone_block
execute positioned 742.0 20 35.0 run function luigis_mansion:blocks/dust
scoreboard players set #sitting_room_table_2 Searched 1
tag @e[x=742.5,y=20,z=34.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=742.5,y=20,z=34.5,distance=..0.7,tag=hidden_boo] add spawn