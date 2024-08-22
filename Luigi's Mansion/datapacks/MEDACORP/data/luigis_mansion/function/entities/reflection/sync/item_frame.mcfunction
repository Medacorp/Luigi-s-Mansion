$data merge entity @s $(data)
execute if data entity @s Item.components."minecraft:map_id" run function luigis_mansion:add_ons/mirror_paintings
tag @s add static