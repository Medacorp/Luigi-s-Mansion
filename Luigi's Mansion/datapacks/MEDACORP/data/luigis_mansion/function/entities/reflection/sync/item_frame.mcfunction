data modify entity @s ItemRotation set from storage luigis_mansion:data mirror.data.ItemRotation
data modify entity @s Item set from storage luigis_mansion:data mirror.data.Item
execute if data entity @s Item.components."minecraft:map_id" run function luigis_mansion:add_ons/mirror_paintings