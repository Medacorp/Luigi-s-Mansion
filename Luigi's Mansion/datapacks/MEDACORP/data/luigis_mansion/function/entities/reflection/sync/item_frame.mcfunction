data modify entity @s {} merge from storage luigis_mansion:data mirror.data
execute if data entity @s Item.components."minecraft:map_id" run function luigis_mansion:add_ons/mirror_paintings
tag @s add static
tag @s remove force_sync