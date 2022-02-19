execute unless score #billiards_room_fan Search matches 1 if score #billiards_room_fan Searching matches 201 run scoreboard players remove #billiards_room_fan Searching 1
execute unless score #billiards_room_fan Search matches 1 if score #billiards_room_fan Searching matches 1.. run scoreboard players remove #billiards_room_fan Searching 1
execute if score #billiards_room_fan Searching matches 200 run function luigis_mansion:room/normal/billiards_room/search/fan
scoreboard players operation #temp Searching = #billiards_room_fan Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 if score #billiards_room_fan Search matches 1 positioned 681.0 16 78.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
function luigis_mansion:room/normal/billiards_room/turn_fan
scoreboard players reset #billiards_room_fan Search