execute if block 761 33 -41 minecraft:andesite as @e[x=761.5,y=29,z=-42.5,distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if block 761 33 -41 minecraft:andesite run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"mace"},amount:10,animation:"knockback/large",no_delete:1b}
execute if block 761 33 -41 minecraft:andesite as @a[x=761.5,y=29,z=-42.5,distance=..1,gamemode=!spectator] positioned 761 29 -42.0 run function luigis_mansion:entities/player/damage
execute if block 761 33 -41 minecraft:andesite run data remove storage luigis_mansion:data damage
execute if block 761 33 -41 minecraft:andesite run place template luigis_mansion:armory/armor_smashed 761 29 -41 none left_right
execute if block 729 33 -41 minecraft:andesite run place template luigis_mansion:armory/armor_smashed 729 29 -41 180
execute unless entity @e[x=762.5,y=29,z=-41.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] run function luigis_mansion:room/hidden/armory/search/armor_9
tag @e[x=762.5,y=29,z=-41.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn