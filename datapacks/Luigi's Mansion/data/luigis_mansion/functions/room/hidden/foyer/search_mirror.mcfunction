execute if block 746 12 12 minecraft:white_wool run setblock 746 12 12 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:foyer/mirror_vacuumed",mirror:"LEFT_RIGHT"}
execute if block 746 12 12 minecraft:structure_block run setblock 746 13 12 minecraft:redstone_block
scoreboard players set #foyer_mirror Searched 1
execute positioned 747.0 12 12.0 run function luigis_mansion:blocks/dust