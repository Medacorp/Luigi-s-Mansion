setblock 3666 61 -40 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/stairs/normal_bottom"}
setblock 3666 62 -40 minecraft:redstone_block
setblock 3666 106 -40 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/stairs/normal_top"}
setblock 3666 107 -40 minecraft:redstone_block
execute if block 3666 61 -40 minecraft:structure_block run setblock 3666 61 -40 minecraft:glow_lichen[north=false,east=false,west=false,south=false,up=false,down=false]
execute if block 3666 62 -40 minecraft:redstone_block run setblock 3666 62 -40 minecraft:air
execute if block 3666 106 -40 minecraft:structure_block run setblock 3666 106 -40 minecraft:air
execute if block 3666 107 -40 minecraft:redstone_block run setblock 3666 107 -40 minecraft:air