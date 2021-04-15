execute if block 711 124 -35 minecraft:andesite run effect give @a[x=712.5,y=120,z=-33.5,distance=..1,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if block 711 124 -35 minecraft:andesite run scoreboard players set @a[x=712.5,y=120,z=-33.5,distance=..1,gamemode=!spectator] ForcedDamage 4
execute if block 711 124 -35 minecraft:andesite run setblock 710 120 -33 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:armory/armor_diagonal_smashed",mirror:"LEFT_RIGHT"}
execute if block 710 120 -33 minecraft:structure_block run setblock 710 121 -33 minecraft:redstone_block
execute positioned 711 120 -34 run function luigis_mansion:blocks/dust
scoreboard players set #armory_armor_1 Searched 1
tag @e[x=711.5,y=120,z=-33.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=711.5,y=120,z=-33.5,distance=..0.7,tag=hidden_boo] add spawn