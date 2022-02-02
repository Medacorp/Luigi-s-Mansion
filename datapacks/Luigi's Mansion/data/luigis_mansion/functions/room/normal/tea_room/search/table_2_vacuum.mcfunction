execute if block 642 20 -56 minecraft:white_wool run setblock 642 20 -56 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:tea_room/table_vacuumed"}
execute if block 642 20 -56 minecraft:structure_block run setblock 642 20 -55 minecraft:redstone_block
setblock 643 21 -48 minecraft:hopper[enabled=false]
function luigis_mansion:room/normal/tea_room/search/boo_check/table_2