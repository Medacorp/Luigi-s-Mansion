data modify storage luigis_mansion:data inventory set from entity @s Inventory
data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".flags[0] set value 1b
data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".strings[1] set value "scanning"
function luigis_mansion:other/sync_inventory