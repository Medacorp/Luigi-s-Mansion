$execute if data storage luigis_mansion:data rooms.$(room){seen:1b} run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "seen"
$execute if data storage luigis_mansion:data rooms.$(room){cleared:1b} run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "cleared"
$execute if data storage luigis_mansion:data rooms.$(room){cleared:1b} run tag @s add cleared
$execute unless data storage luigis_mansion:data rooms.$(room) run tag @s add cleared