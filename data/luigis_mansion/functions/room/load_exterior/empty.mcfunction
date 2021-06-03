scoreboard players set #loaded_exterior Selected -1
scoreboard players set * ChangedMansion 1
scoreboard players reset @e ChangedMansion

tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.load_mansion.start"}]}
kill @e[x=615,y=92,z=-66,dx=107,dy=60,dz=147,type=minecraft:item_frame]
setblock 771 97 13 minecraft:air
setblock 771 97 2 minecraft:air
setblock 711 138 78 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/24",posX:1,posY:0,posZ:1,sizeX:37,sizeY:13,sizeZ:2,ignoreEntities:1b}
setblock 711 139 78 minecraft:redstone_block
fill 711 138 78 711 139 78 minecraft:air
setblock 711 138 30 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/23",posX:1,posY:0,posZ:1,sizeX:37,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 711 139 30 minecraft:redstone_block
fill 711 138 30 711 139 30 minecraft:air
setblock 711 138 -18 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/22",posX:1,posY:0,posZ:1,sizeX:37,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 711 139 -18 minecraft:redstone_block
fill 711 138 -18 711 139 -18 minecraft:air
setblock 711 138 -66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/21",posX:1,posY:0,posZ:1,sizeX:37,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 711 139 -66 minecraft:redstone_block
fill 711 138 -66 711 139 -66 minecraft:air
setblock 663 138 78 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/20",posX:1,posY:0,posZ:1,sizeX:48,sizeY:13,sizeZ:2,ignoreEntities:1b}
setblock 663 139 78 minecraft:redstone_block
fill 663 138 78 663 139 78 minecraft:air
setblock 663 138 30 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/19",posX:1,posY:0,posZ:1,sizeX:48,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 663 139 30 minecraft:redstone_block
fill 663 138 30 663 139 30 minecraft:air
setblock 663 138 -18 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/18",posX:1,posY:0,posZ:1,sizeX:48,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 663 139 -18 minecraft:redstone_block
fill 663 138 -18 663 139 -18 minecraft:air
setblock 663 138 -66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/17",posX:1,posY:0,posZ:1,sizeX:48,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 663 139 -66 minecraft:redstone_block
fill 663 138 -66 663 139 -66 minecraft:air
setblock 615 138 78 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/16",posX:1,posY:0,posZ:1,sizeX:48,sizeY:13,sizeZ:2,ignoreEntities:1b}
setblock 615 139 78 minecraft:redstone_block
fill 615 138 78 615 139 78 minecraft:air
setblock 615 138 30 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/15",posX:1,posY:0,posZ:1,sizeX:48,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 615 139 30 minecraft:redstone_block
fill 615 138 30 615 139 30 minecraft:air
setblock 615 138 -18 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/14",posX:1,posY:0,posZ:1,sizeX:48,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 615 139 -18 minecraft:redstone_block
fill 615 138 -18 615 139 -18 minecraft:air
setblock 615 138 -66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/13",posX:1,posY:0,posZ:1,sizeX:48,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 615 139 -66 minecraft:redstone_block
fill 615 138 -66 615 139 -66 minecraft:air
setblock 711 100 78 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/12",posX:1,posY:-10,posZ:1,sizeX:37,sizeY:48,sizeZ:2,ignoreEntities:1b}
setblock 711 101 78 minecraft:redstone_block
fill 711 100 78 711 101 78 minecraft:air
setblock 711 100 30 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/11",posX:1,posY:-10,posZ:1,sizeX:37,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 711 101 30 minecraft:redstone_block
fill 711 100 30 711 101 30 minecraft:air
setblock 711 100 -18 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/10",posX:1,posY:-10,posZ:1,sizeX:37,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 711 101 -18 minecraft:redstone_block
fill 711 100 -18 711 101 -18 minecraft:air
setblock 711 100 -66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/9",posX:1,posY:-10,posZ:1,sizeX:37,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 711 101 -66 minecraft:redstone_block
fill 711 100 -66 711 101 -66 minecraft:air
setblock 663 100 78 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/8",posX:1,posY:-10,posZ:1,sizeX:48,sizeY:48,sizeZ:2,ignoreEntities:1b}
setblock 663 101 78 minecraft:redstone_block
fill 663 100 78 663 101 78 minecraft:air
setblock 663 100 30 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/7",posX:1,posY:-10,posZ:1,sizeX:48,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 663 101 30 minecraft:redstone_block
fill 663 100 30 663 101 30 minecraft:air
setblock 663 100 -18 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/6",posX:1,posY:-10,posZ:1,sizeX:48,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 663 101 -18 minecraft:redstone_block
fill 663 100 -18 663 101 -18 minecraft:air
setblock 663 100 -66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/5",posX:1,posY:-10,posZ:1,sizeX:48,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 663 101 -66 minecraft:redstone_block
fill 663 100 -66 663 101 -66 minecraft:air
setblock 615 100 78 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/4",posX:1,posY:-10,posZ:1,sizeX:48,sizeY:48,sizeZ:2,ignoreEntities:1b}
setblock 615 101 78 minecraft:redstone_block
fill 615 100 78 615 101 78 minecraft:air
setblock 615 100 30 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/3",posX:1,posY:-10,posZ:1,sizeX:48,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 615 101 30 minecraft:redstone_block
fill 615 100 30 615 101 30 minecraft:air
setblock 615 100 -18 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/2",posX:1,posY:-10,posZ:1,sizeX:48,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 615 101 -18 minecraft:redstone_block
fill 615 100 -18 615 101 -18 minecraft:air
setblock 615 100 -66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/empty/1",posX:1,posY:-10,posZ:1,sizeX:48,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 615 101 -66 minecraft:redstone_block
fill 615 100 -66 615 101 -66 minecraft:air
kill @e[x=615,y=92,z=-66,dx=107,dy=60,dz=147,type=minecraft:item]
tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.load_mansion.stop"}]}