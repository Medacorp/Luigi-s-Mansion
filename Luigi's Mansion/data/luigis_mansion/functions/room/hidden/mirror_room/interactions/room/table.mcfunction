execute unless score #mirror_room_table Search matches 1 run scoreboard players reset #mirror_room_table Searching
scoreboard players reset #mirror_room_table Search
execute if score #mirror_room_table Searching matches 20 run function luigis_mansion:room/hidden/mirror_room/search_table
execute unless block 741 11 76 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/mirror_room/search_table
execute unless block 740 11 76 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/mirror_room/search_table