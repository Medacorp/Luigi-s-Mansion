fill 770 77 -12 770 79 -12 minecraft:air
fill 770 78 -11 770 78 11 minecraft:air
fill 770 77 12 770 76 12 minecraft:air
fill 770 84 7 770 79 3 minecraft:air replace minecraft:light_gray_concrete
setblock 769 79 -1 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:ghost_portrificationizer_room/zapper_stand_by"}
setblock 769 80 -1 minecraft:redstone_block
fill 768 80 -4 770 82 -6 minecraft:air replace minecraft:oak_fence
setblock 770 80 -4 minecraft:oak_fence[north=false,south=false,west=true,east=false]
setblock 769 80 -4 minecraft:oak_fence[north=false,south=false,west=true,east=true]
setblock 768 80 -4 minecraft:oak_fence[north=false,south=false,west=false,east=true]
fill 770 81 -4 770 82 -4 minecraft:oak_fence[east=false,north=false,south=false,west=false]
setblock 770 81 -7 minecraft:green_terracotta
setblock 770 79 -7 minecraft:air
scoreboard players reset #ghost_portrificationizer_room