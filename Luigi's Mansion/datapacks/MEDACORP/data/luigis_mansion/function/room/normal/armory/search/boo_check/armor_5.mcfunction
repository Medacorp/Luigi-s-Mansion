execute if block 753 33 62 minecraft:andesite run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"mace"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute if block 753 33 62 minecraft:andesite as @e[tag=luigi,x=754.5,y=29,z=61.5,distance=..1] positioned 754.0 29 62.0 run function luigis_mansion:entities/player/damage
execute if block 753 33 62 minecraft:andesite run data remove storage luigis_mansion:data damage
execute if block 753 33 62 minecraft:andesite run place template luigis_mansion:armory/armor_diagonal_smashed 752 29 60
execute if block 737 33 62 minecraft:andesite run place template luigis_mansion:armory/armor_diagonal_smashed 738 29 60 none front_back
execute unless entity @e[x=753.5,y=29,z=61.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] run function luigis_mansion:room/normal/armory/search/armor_5
tag @e[x=753.5,y=29,z=61.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn