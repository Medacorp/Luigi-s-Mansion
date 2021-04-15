execute if block 689 102 -19 minecraft:iron_block run setblock 687 102 -17 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:kitchen/fridge_open",mirror:"LEFT_RIGHT"}
execute if block 687 102 -17 minecraft:structure_block run setblock 687 103 -17 minecraft:redstone_block
execute positioned 689 102 -19.0 run function luigis_mansion:blocks/dust
scoreboard players set #kitchen_fridge Searched 1
tag @e[x=689.5,y=102,z=-19.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=689.5,y=102,z=-19.5,distance=..0.7,tag=ghost_marker] add spawn
teleport @e[x=689.5,y=102,z=-19.5,distance=..0.7,tag=ghost_marker] 689 102 -19.0
