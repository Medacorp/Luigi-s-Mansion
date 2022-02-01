execute unless score #butlers_room_ironing_table Search matches 1 run scoreboard players reset #butlers_room_ironing_table Searching
scoreboard players reset #butlers_room_ironing_table Search
execute if score #butlers_room_ironing_table Searching matches 20 run function luigis_mansion:room/hidden/butlers_room/search/ironing_table_vacuum
scoreboard players operation #temp Searching = #butlers_room_ironing_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 745 11 -55.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching