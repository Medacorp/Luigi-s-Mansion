tag @e[tag=haunted_frying_pan] add enabled
data modify storage luigis_mansion:data entity set value {tags:["hiding_in_furniture"]}
execute positioned 701 11 70 run function luigis_mansion:spawn_entities/ghost/flash
scoreboard players set #kitchen Wave 1