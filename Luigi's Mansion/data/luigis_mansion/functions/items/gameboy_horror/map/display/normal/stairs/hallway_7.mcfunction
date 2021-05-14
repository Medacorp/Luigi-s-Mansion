setblock 3700 11 -40 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/stairs/normal_bottom"}
setblock 3700 12 -40 minecraft:redstone_block
setblock 3700 56 -40 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/stairs/normal_top"}
setblock 3700 57 -40 minecraft:redstone_block
execute if block 3700 11 -40 minecraft:structure_block run setblock 3700 11 -40 minecraft:glow_lichen[north=false,east=false,west=false,south=false,up=false,down=false]
execute if block 3700 12 -40 minecraft:redstone_block run setblock 3700 12 -40 minecraft:air
execute if block 3700 56 -40 minecraft:structure_block run setblock 3700 56 -40 minecraft:air
execute if block 3700 57 -40 minecraft:redstone_block run setblock 3700 57 -40 minecraft:air