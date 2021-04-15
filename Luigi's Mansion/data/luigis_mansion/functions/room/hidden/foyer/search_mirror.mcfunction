execute if block 709 103 13 minecraft:white_wool run setblock 709 103 13 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:foyer/mirror_vacuumed",mirror:"LEFT_RIGHT"}
execute if block 709 103 13 minecraft:structure_block run setblock 709 104 13 minecraft:redstone_block
scoreboard players set #foyer_mirror Searched 1
execute positioned 710.0 103 13.0 run function luigis_mansion:blocks/dust