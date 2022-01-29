execute if block 761 33 -41 minecraft:andesite as @e[x=761.5,y=29,z=-42.5,distance=..1,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if block 761 33 -41 minecraft:andesite run effect give @a[x=761.5,y=29,z=-42.5,distance=..1,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if block 761 33 -41 minecraft:andesite run scoreboard players set @a[x=761.5,y=29,z=-42.5,distance=..1,gamemode=!spectator] ForcedDamage 4
execute if block 761 33 -41 minecraft:andesite as @a[x=761.5,y=29,z=-42.5,distance=..1,gamemode=!spectator] positioned 761 29 -42.0 run function luigis_mansion:entities/player/knockback/large
execute if block 761 33 -41 minecraft:andesite run setblock 761 29 -41 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:armory/armor_smashed",mirror:"LEFT_RIGHT"}
execute if block 761 29 -41 minecraft:structure_block run setblock 761 30 -41 minecraft:redstone_block
execute if block 729 33 -41 minecraft:andesite run setblock 729 29 -41 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:armory/armor_smashed",rotation:"CLOCKWISE_180"}
execute if block 729 29 -41 minecraft:structure_block run setblock 729 30 -41 minecraft:redstone_block
execute positioned 762 29 -42 run function luigis_mansion:blocks/dust
execute positioned 728 29 -42 run function luigis_mansion:blocks/dust_no_sound
scoreboard players set #armory_armor_9 Searched 1
tag @e[x=762.5,y=29,z=-41.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=762.5,y=29,z=-41.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn