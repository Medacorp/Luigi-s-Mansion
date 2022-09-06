execute unless score #bed_room_1_fan Search matches 1 if score #bed_room_1_fan Searching matches 201 run scoreboard players remove #bed_room_1_fan Searching 1
execute unless score #bed_room_1_fan Search matches 1 if score #bed_room_1_fan Searching matches 1.. run scoreboard players remove #bed_room_1_fan Searching 1
execute if score #bed_room_1_fan Searching matches 200 run function luigis_beta_mansion:room/original/bed_room_1/search/fan
scoreboard players operation #temp Searching = #bed_room_1_fan Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 if score #bed_room_1_fan Search matches 1 positioned 691.0 116 47.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
function luigis_beta_mansion:room/original/bed_room_1/turn_fan
scoreboard players reset #bed_room_1_fan Search