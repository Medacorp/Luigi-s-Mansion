execute unless score #master_bedroom_fan Search matches 1 if score #master_bedroom_fan Searching matches 201 run scoreboard players remove #master_bedroom_fan Searching 1
execute unless score #master_bedroom_fan Search matches 1 if score #master_bedroom_fan Searching matches 1.. run scoreboard players remove #master_bedroom_fan Searching 1
execute if score #master_bedroom_fan Searching matches 200 run function luigis_mansion:room/hidden/master_bedroom/search/fan
scoreboard players operation #temp Searching = #master_bedroom_fan Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 if score #master_bedroom_fan Search matches 1 positioned 691.0 116 -31.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
function luigis_mansion:room/hidden/master_bedroom/turn_fan
scoreboard players reset #master_bedroom_fan Search