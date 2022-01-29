execute if block 757 33 -58 minecraft:andesite as @e[x=758.5,y=29,z=-56.5,distance=..1,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if block 757 33 -58 minecraft:andesite run effect give @a[x=758.5,y=29,z=-56.5,distance=..1,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if block 757 33 -58 minecraft:andesite run scoreboard players set @a[x=758.5,y=29,z=-56.5,distance=..1,gamemode=!spectator] ForcedDamage 4
execute if block 757 33 -58 minecraft:andesite as @a[x=758.5,y=29,z=-56.5,distance=..1,gamemode=!spectator] positioned 758.0 29 -57.0 run function luigis_mansion:entities/player/knockback/large
execute if block 757 33 -58 minecraft:andesite run setblock 756 29 -56 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:armory/armor_diagonal_smashed",mirror:"LEFT_RIGHT"}
execute if block 756 29 -56 minecraft:structure_block run setblock 756 30 -56 minecraft:redstone_block
execute if block 733 33 -58 minecraft:andesite run setblock 734 29 -56 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:armory/armor_diagonal_smashed",rotation:"CLOCKWISE_180"}
execute if block 734 29 -56 minecraft:structure_block run setblock 734 30 -56 minecraft:redstone_block
execute positioned 757 29 -57 run function luigis_mansion:blocks/dust
execute positioned 733 29 -57 run function luigis_mansion:blocks/dust_no_sound
scoreboard players set #armory_armor_1 Searched 1
tag @e[x=757.5,y=29,z=-56.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=757.5,y=29,z=-56.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn