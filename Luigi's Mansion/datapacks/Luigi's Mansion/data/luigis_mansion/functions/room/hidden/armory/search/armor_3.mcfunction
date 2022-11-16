execute if block 759 33 -53 minecraft:andesite as @e[x=760.5,y=29,z=-51.5,distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if block 759 33 -53 minecraft:andesite run effect give @a[x=760.5,y=29,z=-51.5,distance=..1,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if block 759 33 -53 minecraft:andesite run scoreboard players set @a[x=760.5,y=29,z=-51.5,distance=..1,gamemode=!spectator] ForcedDamage 4
execute if block 759 33 -53 minecraft:andesite as @a[x=760.5,y=29,z=-51.5,distance=..1,gamemode=!spectator] positioned 760.0 29 -52.0 run function luigis_mansion:entities/player/knockback/large
execute if block 759 33 -53 minecraft:andesite run place template luigis_mansion:armory/armor_diagonal_smashed 758 29 -51 none left_right
execute if block 731 33 -53 minecraft:andesite run place template luigis_mansion:armory/armor_diagonal_smashed 732 29 -51 180
execute positioned 759 29 -52 run function luigis_mansion:blocks/dust
execute positioned 731 29 -52 run function luigis_mansion:blocks/dust_no_sound
scoreboard players set #armory_armor_3 Searched 1
tag @e[x=759.5,y=29,z=-51.5,distance=..0.7,tag=ghost,tag=hidden] add spawn