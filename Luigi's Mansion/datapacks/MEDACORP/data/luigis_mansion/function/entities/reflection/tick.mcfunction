execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s ReflectionNr
function luigis_mansion:entities/reflection/get_data with storage luigis_mansion:data macro

execute unless entity @s[tag=static,tag=!force_sync] if data storage luigis_mansion:data mirror run function luigis_mansion:entities/reflection/sync
execute unless data storage luigis_mansion:data mirror run tag @s add remove_from_existence
data remove storage luigis_mansion:data mirror