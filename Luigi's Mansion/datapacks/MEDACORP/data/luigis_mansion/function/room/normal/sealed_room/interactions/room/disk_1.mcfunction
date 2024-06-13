execute unless score #sealed_room_disk_1 Search matches 1 run scoreboard players reset #sealed_room_disk_1 Searching
scoreboard players reset #sealed_room_disk_1 Search
execute if score #sealed_room_disk_1 Searching matches 20 run function luigis_mansion:room/normal/sealed_room/search/disk_1
scoreboard players operation #temp Searching = #sealed_room_disk_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 700 22 -58 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching