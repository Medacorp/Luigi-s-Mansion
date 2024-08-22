execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s ReflectionNr
function luigis_mansion:entities/reflection/get_data with storage luigis_mansion:data macro

execute if entity @s[type=minecraft:armor_stand,tag=!static] if data storage luigis_mansion:data mirror run function luigis_mansion:entities/reflection/sync/armor_stand with storage luigis_mansion:data mirror
execute if entity @s[type=minecraft:item_frame,tag=!static] if data storage luigis_mansion:data mirror run function luigis_mansion:entities/reflection/sync/item_frame with storage luigis_mansion:data mirror
execute unless data storage luigis_mansion:data mirror run tag @s add remove_from_existence
data remove storage luigis_mansion:data mirror