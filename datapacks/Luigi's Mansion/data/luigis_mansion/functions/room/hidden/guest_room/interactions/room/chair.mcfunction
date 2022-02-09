execute unless score #guest_room_chair Search matches 1 run scoreboard players reset #guest_room_chair Searching
scoreboard players reset #guest_room_chair Search
execute if block 742 21 67 minecraft:redstone_lamp if score #guest_room_chair Searching matches 20 run function luigis_mansion:room/hidden/guest_room/search/chair_flipped
execute unless block 742 21 67 minecraft:redstone_lamp if score #guest_room_chair Searching matches 20 run function luigis_mansion:room/hidden/guest_room/search/boo_check/chair
scoreboard players operation #temp Searching = #guest_room_chair Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 if block 742 21 67 minecraft:redstone_lamp positioned 738 27 60 run function luigis_mansion:blocks/search_sound/generic
execute if score #temp Searching matches 1 unless block 742 21 67 minecraft:redstone_lamp positioned 738 20 60 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching