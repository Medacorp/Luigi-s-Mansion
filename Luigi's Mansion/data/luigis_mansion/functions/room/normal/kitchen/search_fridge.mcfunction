execute if block 701 11 69 minecraft:iron_block run setblock 699 11 67 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:kitchen/fridge_open"}
execute if block 699 11 67 minecraft:structure_block run setblock 699 12 67 minecraft:redstone_block
execute positioned 701 11 70.0 run function luigis_mansion:blocks/dust
scoreboard players set #kitchen_fridge Searched 1
tag @e[x=701.5,y=11,z=70.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=701.5,y=11,z=70.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
teleport @e[x=701.5,y=11,z=70.5,distance=..0.7,tag=ghost,tag=hidden] 701 11 70.0
