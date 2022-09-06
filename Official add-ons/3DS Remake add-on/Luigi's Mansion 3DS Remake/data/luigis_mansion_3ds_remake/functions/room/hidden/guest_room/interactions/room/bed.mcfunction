execute unless score #guest_room_bed Search matches 1 run scoreboard players reset #guest_room_bed Searching
scoreboard players reset #guest_room_bed Search
execute if block 742 21 -52 minecraft:redstone_lamp if score #guest_room_bed Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/guest_room/search/bed_flipped
execute unless block 742 21 -52 minecraft:redstone_lamp if score #guest_room_bed Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/guest_room/search/boo_check/bed
scoreboard players operation #temp Searching = #guest_room_bed Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 if block 742 21 -52 minecraft:redstone_lamp positioned 742.0 26 -58.0 run function luigis_mansion:blocks/search_sound/heavy_generic
execute if score #temp Searching matches 1 unless block 742 21 -52 minecraft:redstone_lamp positioned 742.0 21 -58.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching