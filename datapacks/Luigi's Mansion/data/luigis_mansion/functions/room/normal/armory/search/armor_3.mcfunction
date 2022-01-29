execute if block 759 33 68 minecraft:andesite as @e[x=760.5,y=29,z=67.5,distance=..1,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if block 759 33 68 minecraft:andesite run effect give @a[x=760.5,y=29,z=67.5,distance=..1,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if block 759 33 68 minecraft:andesite run scoreboard players set @a[x=760.5,y=29,z=67.5,distance=..1,gamemode=!spectator] ForcedDamage 4
execute if block 759 33 68 minecraft:andesite as @a[x=760.5,y=29,z=67.5,distance=..1,gamemode=!spectator] positioned 760.0 29 68.0 run function luigis_mansion:entities/player/knockback/large
execute if block 759 33 68 minecraft:andesite run setblock 758 29 66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:armory/armor_diagonal_smashed"}
execute if block 758 29 66 minecraft:structure_block run setblock 758 30 66 minecraft:redstone_block
execute if block 731 33 68 minecraft:andesite run setblock 732 29 66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:armory/armor_diagonal_smashed",mirror:"FRONT_BACK"}
execute if block 732 29 66 minecraft:structure_block run setblock 732 30 66 minecraft:redstone_block
execute positioned 759 29 67 run function luigis_mansion:blocks/dust
execute positioned 731 29 67 run function luigis_mansion:blocks/dust_no_sound
scoreboard players set #armory_armor_3 Searched 1
tag @e[x=759.5,y=29,z=67.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=759.5,y=29,z=67.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn