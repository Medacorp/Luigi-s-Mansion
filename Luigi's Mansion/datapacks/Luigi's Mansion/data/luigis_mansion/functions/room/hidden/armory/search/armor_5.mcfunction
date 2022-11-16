execute if block 753 33 -47 minecraft:andesite as @e[x=754.5,y=29,z=-45.5,distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if block 753 33 -47 minecraft:andesite run effect give @a[x=754.5,y=29,z=-45.5,distance=..1,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if block 753 33 -47 minecraft:andesite run scoreboard players set @a[x=754.5,y=29,z=-45.5,distance=..1,gamemode=!spectator] ForcedDamage 4
execute if block 753 33 -47 minecraft:andesite as @a[x=754.5,y=29,z=-45.5,distance=..1,gamemode=!spectator] positioned 754.0 29 -46.0 run function luigis_mansion:entities/player/knockback/large
execute if block 753 33 -47 minecraft:andesite run place template luigis_mansion:armory/armor_diagonal_smashed 752 29 -45 none left_right
execute if block 737 33 -47 minecraft:andesite run place template luigis_mansion:armory/armor_diagonal_smashed 738 29 -45 180
execute positioned 753 29 -46 run function luigis_mansion:blocks/dust
execute positioned 737 29 -46 run function luigis_mansion:blocks/dust_no_sound
scoreboard players set #armory_armor_5 Searched 1
tag @e[x=753.5,y=29,z=-45.5,distance=..0.7,tag=ghost,tag=hidden] add spawn