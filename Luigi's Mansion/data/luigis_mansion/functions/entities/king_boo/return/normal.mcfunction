teleport @s 645 93 -18 -90 0
scoreboard players set @s GBHCall 12
setblock 672 29 -19970 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:boss_area/king_boo/clear/1"}
setblock 672 30 -19970 minecraft:redstone_block
setblock 720 29 -19970 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:boss_area/king_boo/clear/2"}
setblock 720 30 -19970 minecraft:redstone_block
function luigis_mansion:entities/king_boo/return