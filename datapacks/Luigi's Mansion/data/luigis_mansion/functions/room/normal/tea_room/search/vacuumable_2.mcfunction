execute if block 642 20 -56 minecraft:white_wool run setblock 642 20 -56 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:tea_room/table_vacuumed"}
execute if block 642 20 -56 minecraft:structure_block run setblock 642 20 -55 minecraft:redstone_block
setblock 643 21 -48 minecraft:hopper[enabled=false]
scoreboard players set #tea_room_vacuumable_2 Searched 1
tag @e[x=643.5,y=20,z=-51.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn