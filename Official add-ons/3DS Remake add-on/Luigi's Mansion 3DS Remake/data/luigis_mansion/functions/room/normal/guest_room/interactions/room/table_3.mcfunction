execute unless score #guest_room_table_3 Search matches 1 run scoreboard players reset #guest_room_table_3 Searching
scoreboard players reset #guest_room_table_3 Search
scoreboard players operation #temp Searching = #guest_room_table_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if entity @a[tag=portrait_battle,limit=1] if score #temp Searching matches 1 positioned 746 26 -44 run function luigis_mansion:blocks/search_sound/wood
scoreboard players reset #temp Searching