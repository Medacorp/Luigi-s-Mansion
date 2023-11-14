data modify storage luigis_mansion:data inventory set from entity @s Inventory
execute store result storage luigis_mansion:data inventory[{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}].tag.CustomModelData int 1 run scoreboard players get #temp ActionTime
tag @s add modifying_inventory
function luigis_mansion:other/sync_inventory