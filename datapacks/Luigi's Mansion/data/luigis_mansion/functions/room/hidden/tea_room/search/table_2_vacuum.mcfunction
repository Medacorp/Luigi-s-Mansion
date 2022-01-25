execute if block 642 20 71 minecraft:white_wool run setblock 642 20 71 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:tea_room/table_vacuumed",mirror:"LEFT_RIGHT"}
execute if block 642 20 71 minecraft:structure_block run setblock 642 20 70 minecraft:redstone_block
setblock 643 21 63 minecraft:hopper[enabled=false]
function luigis_mansion:room/hidden/tea_room/search/table_2