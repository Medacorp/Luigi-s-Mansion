execute unless score #guest_room_plant Search matches 1 run scoreboard players reset #guest_room_plant Searching
scoreboard players reset #guest_room_plant Search
execute if block 742 21 67 minecraft:redstone_lamp if score #guest_room_plant Searching matches 20 run function luigis_mansion:room/hidden/guest_room/search/plant_flipped
execute unless block 742 21 67 minecraft:redstone_lamp if score #guest_room_plant Searching matches 20 run function luigis_mansion:room/hidden/guest_room/search/plant
scoreboard players operation #temp Searching = #guest_room_plant Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 if block 742 21 67 minecraft:redstone_lamp positioned 736 27 75 run function luigis_mansion:blocks/search_sound/heavy_generic
execute if score #temp Searching matches 1 unless block 742 21 67 minecraft:redstone_lamp positioned 736 20 75 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching