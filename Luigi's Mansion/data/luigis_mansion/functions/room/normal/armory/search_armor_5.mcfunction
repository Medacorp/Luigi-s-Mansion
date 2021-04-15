execute if block 707 124 39 minecraft:andesite run effect give @a[x=708.5,y=120,z=38.5,distance=..1,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if block 707 124 39 minecraft:andesite run scoreboard players set @a[x=708.5,y=120,z=38.5,distance=..1,gamemode=!spectator] ForcedDamage 4
execute if block 707 124 39 minecraft:andesite run setblock 706 120 37 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:armory/armor_diagonal_smashed"}
execute if block 706 120 37 minecraft:structure_block run setblock 706 121 37 minecraft:redstone_block
execute positioned 707 120 38 run function luigis_mansion:blocks/dust
scoreboard players set #armory_armor_5 Searched 1
tag @e[x=707.5,y=120,z=38.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=707.5,y=120,z=38.5,distance=..0.7,tag=hidden_boo] add spawn