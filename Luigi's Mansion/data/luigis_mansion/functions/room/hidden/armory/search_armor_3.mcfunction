execute if block 713 124 -30 minecraft:andesite run effect give @a[x=714.5,y=120,z=-28.5,distance=..1,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if block 713 124 -30 minecraft:andesite run scoreboard players set @a[x=714.5,y=120,z=-28.5,distance=..1,gamemode=!spectator] ForcedDamage 4
execute if block 713 124 -30 minecraft:andesite run setblock 712 120 -28 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:armory/armor_diagonal_smashed",mirror:"LEFT_RIGHT"}
execute if block 712 120 -28 minecraft:structure_block run setblock 712 121 -28 minecraft:redstone_block
execute positioned 713 120 -29 run function luigis_mansion:blocks/dust
scoreboard players set #armory_armor_3 Searched 1
tag @e[x=713.5,y=120,z=-28.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=713.5,y=120,z=-28.5,distance=..0.7,tag=hidden_boo] add spawn