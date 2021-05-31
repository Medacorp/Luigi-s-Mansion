setblock 3707 61 -1 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/stairs/foyer_bottom"}
setblock 3707 62 -1 minecraft:redstone_block
setblock 3707 106 -1 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/stairs/foyer_top"}
setblock 3707 107 -1 minecraft:redstone_block
execute if block 3707 61 -1 minecraft:structure_block run setblock 3707 61 -1 minecraft:glow_lichen[north=false,east=false,west=false,south=false,up=false,down=false]
execute if block 3707 62 -1 minecraft:redstone_block run setblock 3707 62 -1 minecraft:air
execute if block 3707 106 -1 minecraft:structure_block run setblock 3707 106 -1 minecraft:air
execute if block 3707 107 -1 minecraft:redstone_block run setblock 3707 107 -1 minecraft:air