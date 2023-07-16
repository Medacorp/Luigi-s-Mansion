execute if block 759 33 68 minecraft:andesite as @e[x=760.5,y=29,z=67.5,distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if block 759 33 68 minecraft:andesite run data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:mace",amount:10,knockback:"large",no_delete:1b}
execute if block 759 33 68 minecraft:andesite as @a[x=760.5,y=29,z=67.5,distance=..1,gamemode=!spectator] positioned 760.0 29 68.0 run function luigis_mansion:entities/player/take_damage
execute if block 759 33 68 minecraft:andesite run data remove storage luigis_mansion:data damage
execute if block 759 33 68 minecraft:andesite run place template luigis_mansion:armory/armor_diagonal_smashed 758 29 66
execute if block 731 33 68 minecraft:andesite run place template luigis_mansion:armory/armor_diagonal_smashed 732 29 66 none front_back
execute unless entity @e[x=759.5,y=29,z=67.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] run function luigis_mansion:room/normal/armory/search/armor_3
tag @e[x=759.5,y=29,z=67.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn