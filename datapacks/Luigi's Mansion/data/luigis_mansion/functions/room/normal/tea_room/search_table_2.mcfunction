execute if block 642 20 -56 minecraft:white_wool run setblock 642 20 -56 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:tea_room/table_vacuumed"}
execute if block 642 20 -56 minecraft:structure_block run setblock 642 20 -55 minecraft:redstone_block
setblock 643 21 -48 minecraft:hopper[enabled=false]
execute positioned 643 20 -52 run function luigis_mansion:blocks/dust
scoreboard players set #tea_room_table_2 Searched 1
tag @e[x=643.5,y=20,z=-51.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=643.5,y=20,z=-51.5,distance=..0.7,tag=ghost,tag=hidden] add spawn