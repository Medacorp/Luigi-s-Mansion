execute if block 753 33 -47 minecraft:andesite as @e[x=754.5,y=29,z=-45.5,distance=..1,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if block 753 33 -47 minecraft:andesite run effect give @a[x=754.5,y=29,z=-45.5,distance=..1,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if block 753 33 -47 minecraft:andesite run scoreboard players set @a[x=754.5,y=29,z=-45.5,distance=..1,gamemode=!spectator] ForcedDamage 4
execute if block 753 33 -47 minecraft:andesite as @a[x=754.5,y=29,z=-45.5,distance=..1,gamemode=!spectator] positioned 754.0 29 -46.0 run function luigis_mansion:entities/player/knockback/large
execute if block 753 33 -47 minecraft:andesite run setblock 752 29 -45 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:armory/armor_diagonal_smashed",mirror:"LEFT_RIGHT"}
execute if block 752 29 -45 minecraft:structure_block run setblock 752 30 -45 minecraft:redstone_block
execute if block 737 33 -47 minecraft:andesite run setblock 738 29 -45 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:armory/armor_diagonal_smashed",rotation:"CLOCKWISE_180"}
execute if block 738 29 -45 minecraft:structure_block run setblock 738 30 -45 minecraft:redstone_block
execute positioned 753 29 -46 run function luigis_mansion:blocks/dust
execute positioned 737 29 -46 run function luigis_mansion:blocks/dust_no_sound
scoreboard players set #armory_armor_5 Searched 1
tag @e[x=753.5,y=29,z=-45.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=753.5,y=29,z=-45.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn