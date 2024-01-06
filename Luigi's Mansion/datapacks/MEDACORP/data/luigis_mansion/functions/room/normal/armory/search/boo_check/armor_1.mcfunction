execute if block 757 33 73 minecraft:andesite as @e[x=758.5,y=29,z=72.5,distance=..1,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if block 757 33 73 minecraft:andesite run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"mace"},amount:10,animation:"knockback/large",no_delete:1b}
execute if block 757 33 73 minecraft:andesite as @a[x=758.5,y=29,z=72.5,distance=..1,gamemode=!spectator] positioned 758.0 29 73.0 run function luigis_mansion:entities/player/damage
execute if block 757 33 73 minecraft:andesite run data remove storage luigis_mansion:data damage
execute if block 757 33 73 minecraft:andesite run place template luigis_mansion:armory/armor_diagonal_smashed 756 29 71
execute if block 733 33 73 minecraft:andesite run place template luigis_mansion:armory/armor_diagonal_smashed 734 29 71 none front_back
execute unless entity @e[x=757.5,y=29,z=72.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] run function luigis_mansion:room/normal/armory/search/armor_1
tag @e[x=757.5,y=29,z=72.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn