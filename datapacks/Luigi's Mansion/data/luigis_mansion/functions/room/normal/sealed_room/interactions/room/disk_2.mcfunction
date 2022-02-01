execute unless score #sealed_room_disk_2 Search matches 1 run scoreboard players reset #sealed_room_disk_2 Searching
scoreboard players reset #sealed_room_disk_2 Search
execute if score #sealed_room_disk_2 Searching matches 20 run function luigis_mansion:room/normal/sealed_room/search/disk_2
scoreboard players operation #temp Searching = #sealed_room_disk_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 700 23 -85 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching