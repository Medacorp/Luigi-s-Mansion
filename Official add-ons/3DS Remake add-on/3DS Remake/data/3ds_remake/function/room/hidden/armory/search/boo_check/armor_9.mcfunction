execute if block 761 33 56 minecraft:andesite run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"mace"},amount:10,animation:"knockback/large",no_delete:1b}
execute if block 761 33 56 minecraft:andesite as @e[tag=luigi,x=761.5,y=29,z=58.5,distance=..1] positioned 761 29 58.0 run function luigis_mansion:entities/player/damage
execute if block 761 33 56 minecraft:andesite run data remove storage luigis_mansion:data damage
execute if block 761 33 56 minecraft:andesite run place template luigis_mansion:armory/armor_smashed 761 29 56
execute if block 729 33 56 minecraft:andesite run place template luigis_mansion:armory/armor_smashed 729 29 56 none front_back
execute unless entity @e[x=762.5,y=29,z=57.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] run function 3ds_remake:room/hidden/armory/search/armor_9
tag @e[x=762.5,y=29,z=57.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn