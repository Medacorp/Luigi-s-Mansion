execute if block 642 20 -43 minecraft:white_wool run setblock 642 20 -43 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:tea_room/table_vacuumed"}
execute if block 642 20 -43 minecraft:structure_block run setblock 642 20 -42 minecraft:redstone_block
execute positioned 643 20 -39 run function luigis_mansion:blocks/dust
scoreboard players set #tea_room_table_1 Searched 1
tag @e[x=643.5,y=20,z=-38.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=643.5,y=20,z=-38.5,distance=..0.7,tag=ghost,tag=hidden] add spawn