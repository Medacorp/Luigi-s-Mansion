data modify entity @s ItemRotation set from storage luigis_mansion:data mirror.ItemRotation
data modify entity @s Item set from storage luigis_mansion:data mirror.Item
execute if data entity @s Item.tag.map run function luigis_mansion:add_ons/mirror_paintings