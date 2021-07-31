setblock 3666 61 55 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/stairs/normal_bottom",mirror:"LEFT_RIGHT"}
setblock 3666 62 55 minecraft:redstone_block
setblock 3666 106 55 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/stairs/normal_top",mirror:"LEFT_RIGHT"}
setblock 3666 107 55 minecraft:redstone_block
execute if block 3666 61 55 minecraft:structure_block run setblock 3666 61 55 minecraft:glow_lichen[north=false,east=false,west=false,south=false,up=false,down=false]
execute if block 3666 62 55 minecraft:redstone_block run setblock 3666 62 55 minecraft:air
execute if block 3666 106 55 minecraft:structure_block run setblock 3666 106 55 minecraft:air
execute if block 3666 107 55 minecraft:redstone_block run setblock 3666 107 55 minecraft:air