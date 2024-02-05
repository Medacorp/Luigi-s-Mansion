data modify storage luigis_mansion:data new_reflections set value []
function luigis_mansion:old_entities/reflection/get_data
data modify storage luigis_mansion:data reflections set from storage luigis_mansion:data new_reflections
data remove storage luigis_mansion:data new_reflections
scoreboard players reset #temp Time

execute if entity @s[type=minecraft:armor_stand,tag=!static] if data storage luigis_mansion:data mirror run function luigis_mansion:old_entities/reflection/sync/armor_stand
execute if entity @s[type=minecraft:item_frame,tag=!static] if data storage luigis_mansion:data mirror run function luigis_mansion:old_entities/reflection/sync/item_frame
execute unless data storage luigis_mansion:data mirror run tag @s add remove_from_existence
data remove storage luigis_mansion:data mirror