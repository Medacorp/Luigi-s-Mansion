scoreboard players set #loaded_exterior Selected 0
scoreboard players set * ChangedMansion 1
scoreboard players reset @e ChangedMansion

tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.load_mansion.start"}]}
summon minecraft:marker ~ ~ ~ {Tags:["me"]}
spreadplayers 774 3 0 1 true @e[type=minecraft:marker,tag=me,limit=1]
kill @e[type=minecraft:marker,tag=me,limit=1]
setblock 771 97 13 minecraft:soul_fire
setblock 771 97 2 minecraft:soul_fire
forceload add 749 -66 615 81
setblock 711 138 78 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/24",posX:1,posY:0,posZ:1,sizeX:37,sizeY:13,sizeZ:2,ignoreEntities:1b}
setblock 711 139 78 minecraft:redstone_block
fill 711 138 78 711 139 78 minecraft:air
setblock 711 138 30 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/23",posX:1,posY:0,posZ:1,sizeX:37,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 711 139 30 minecraft:redstone_block
fill 711 138 30 711 139 30 minecraft:air
setblock 711 138 -18 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/22",posX:1,posY:0,posZ:1,sizeX:37,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 711 139 -18 minecraft:redstone_block
fill 711 138 -18 711 139 -18 minecraft:air
setblock 711 138 -66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/21",posX:1,posY:0,posZ:1,sizeX:37,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 711 139 -66 minecraft:redstone_block
fill 711 138 -66 711 139 -66 minecraft:air
setblock 663 138 78 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/20",posX:1,posY:0,posZ:1,sizeX:48,sizeY:13,sizeZ:2,ignoreEntities:1b}
setblock 663 139 78 minecraft:redstone_block
fill 663 138 78 663 139 78 minecraft:air
setblock 663 138 30 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/19",posX:1,posY:0,posZ:1,sizeX:48,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 663 139 30 minecraft:redstone_block
fill 663 138 30 663 139 30 minecraft:air
setblock 663 138 -18 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/18",posX:1,posY:0,posZ:1,sizeX:48,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 663 139 -18 minecraft:redstone_block
fill 663 138 -18 663 139 -18 minecraft:air
setblock 663 138 -66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/17",posX:1,posY:0,posZ:1,sizeX:48,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 663 139 -66 minecraft:redstone_block
fill 663 138 -66 663 139 -66 minecraft:air
setblock 615 138 78 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/16",posX:1,posY:0,posZ:1,sizeX:48,sizeY:13,sizeZ:2,ignoreEntities:1b}
setblock 615 139 78 minecraft:redstone_block
fill 615 138 78 615 139 78 minecraft:air
setblock 615 138 30 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/15",posX:1,posY:0,posZ:1,sizeX:48,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 615 139 30 minecraft:redstone_block
fill 615 138 30 615 139 30 minecraft:air
setblock 615 138 -18 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/14",posX:1,posY:0,posZ:1,sizeX:48,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 615 139 -18 minecraft:redstone_block
fill 615 138 -18 615 139 -18 minecraft:air
setblock 615 138 -66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/13",posX:1,posY:0,posZ:1,sizeX:48,sizeY:13,sizeZ:48,ignoreEntities:1b}
setblock 615 139 -66 minecraft:redstone_block
fill 615 138 -66 615 139 -66 minecraft:air
setblock 711 100 78 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/12",posX:1,posY:-10,posZ:1,sizeX:37,sizeY:48,sizeZ:2,ignoreEntities:1b}
setblock 711 101 78 minecraft:redstone_block
fill 711 100 78 711 101 78 minecraft:air
setblock 711 100 30 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/11",posX:1,posY:-10,posZ:1,sizeX:37,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 711 101 30 minecraft:redstone_block
fill 711 100 30 711 101 30 minecraft:air
setblock 711 100 -18 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/10",posX:1,posY:-10,posZ:1,sizeX:37,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 711 101 -18 minecraft:redstone_block
fill 711 100 -18 711 101 -18 minecraft:air
setblock 711 100 -66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/9",posX:1,posY:-10,posZ:1,sizeX:37,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 711 101 -66 minecraft:redstone_block
fill 711 100 -66 711 101 -66 minecraft:air
setblock 663 100 78 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/8",posX:1,posY:-10,posZ:1,sizeX:48,sizeY:48,sizeZ:2,ignoreEntities:1b}
setblock 663 101 78 minecraft:redstone_block
fill 663 100 78 663 101 78 minecraft:air
setblock 663 100 30 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/7",posX:1,posY:-10,posZ:1,sizeX:48,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 663 101 30 minecraft:redstone_block
fill 663 100 30 663 101 30 minecraft:air
setblock 663 100 -18 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/6",posX:1,posY:-10,posZ:1,sizeX:48,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 663 101 -18 minecraft:redstone_block
fill 663 100 -18 663 101 -18 minecraft:air
setblock 663 100 -66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/5",posX:1,posY:-10,posZ:1,sizeX:48,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 663 101 -66 minecraft:redstone_block
fill 663 100 -66 663 101 -66 minecraft:air
setblock 615 100 78 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/4",posX:1,posY:-10,posZ:1,sizeX:48,sizeY:48,sizeZ:2,ignoreEntities:1b}
setblock 615 101 78 minecraft:redstone_block
fill 615 100 78 615 101 78 minecraft:air
setblock 615 100 30 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/3",posX:1,posY:-10,posZ:1,sizeX:48,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 615 101 30 minecraft:redstone_block
fill 615 100 30 615 101 30 minecraft:air
setblock 615 100 -18 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/2",posX:1,posY:-10,posZ:1,sizeX:48,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 615 101 -18 minecraft:redstone_block
fill 615 100 -18 615 101 -18 minecraft:air
setblock 615 100 -66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:mansion/mansion/1",posX:1,posY:-10,posZ:1,sizeX:48,sizeY:48,sizeZ:48,ignoreEntities:1b}
setblock 615 101 -66 minecraft:redstone_block
fill 615 100 -66 615 101 -66 minecraft:air
forceload remove 749 -66 615 81
tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.load_mansion.stop"}]}