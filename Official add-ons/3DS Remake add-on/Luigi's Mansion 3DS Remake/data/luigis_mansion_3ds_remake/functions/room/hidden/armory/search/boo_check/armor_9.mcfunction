execute if block 761 33 56 minecraft:andesite as @e[x=761.5,y=29,z=58.5,distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if block 761 33 56 minecraft:andesite run effect give @a[x=761.5,y=29,z=58.5,distance=..1,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if block 761 33 56 minecraft:andesite run scoreboard players set @a[x=761.5,y=29,z=58.5,distance=..1,gamemode=!spectator] ForcedDamage 4
execute if block 761 33 56 minecraft:andesite as @a[x=761.5,y=29,z=58.5,distance=..1,gamemode=!spectator] positioned 761 29 58.0 run function luigis_mansion:entities/player/knockback/large
execute if block 761 33 56 minecraft:andesite run place template luigis_mansion:armory/armor_smashed 761 29 56
execute if block 729 33 56 minecraft:andesite run place template luigis_mansion:armory/armor_smashed 729 29 56 none front_back
execute unless entity @e[x=762.5,y=29,z=57.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] run function luigis_mansion_3ds_remake:room/hidden/armory/search/armor_9
tag @e[x=762.5,y=29,z=57.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn