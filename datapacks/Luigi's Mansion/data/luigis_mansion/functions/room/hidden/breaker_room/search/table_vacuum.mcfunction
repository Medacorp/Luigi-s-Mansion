execute if block 694 2 60 minecraft:white_wool run setblock 694 2 60 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:breaker_room/table_vacuumed",mirror:"LEFT_RIGHT"}
execute if block 694 2 60 minecraft:structure_block run setblock 694 2 59 minecraft:redstone_block
execute if block 704 2 60 minecraft:white_wool run setblock 704 2 60 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:breaker_room/table_vacuumed",rotation:"CLOCKWISE_180"}
execute if block 704 2 60 minecraft:structure_block run setblock 704 2 59 minecraft:redstone_block
function luigis_mansion:room/hidden/breaker_room/search/boo_check/table