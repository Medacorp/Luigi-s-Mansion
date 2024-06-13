data modify storage luigis_mansion:data inventory set from entity @s Inventory
execute store result storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data" int 1 run scoreboard players get #temp ActionTime
function luigis_mansion:other/sync_inventory