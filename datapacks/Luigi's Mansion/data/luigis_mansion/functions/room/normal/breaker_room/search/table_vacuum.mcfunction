execute if block 694 2 -45 minecraft:white_wool run setblock 694 2 -45 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:breaker_room/table_vacuumed"}
execute if block 694 2 -45 minecraft:structure_block run setblock 694 2 -44 minecraft:redstone_block
execute if block 704 2 -45 minecraft:white_wool run setblock 704 2 -45 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:breaker_room/table_vacuumed",mirror:"FRONT_BACK"}
execute if block 704 2 -45 minecraft:structure_block run setblock 704 2 -44 minecraft:redstone_block
function luigis_mansion:room/normal/breaker_room/search/boo_check/table