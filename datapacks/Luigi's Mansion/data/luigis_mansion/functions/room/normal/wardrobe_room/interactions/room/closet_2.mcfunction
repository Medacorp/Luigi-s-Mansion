execute unless score #wardrobe_room_closet_2 Search matches 1 run scoreboard players reset #wardrobe_room_closet_2 Searching
scoreboard players reset #wardrobe_room_closet_2 Search
execute if score #wardrobe_room_closet_2 Searching matches 20 run function luigis_mansion:room/normal/wardrobe_room/search/closet_2
scoreboard players operation #temp Searching = #wardrobe_room_closet_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 679 21 66.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching
execute unless block 679 21 66 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/wardrobe_room/search/closet_2
execute unless block 679 21 65 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/wardrobe_room/search/closet_2