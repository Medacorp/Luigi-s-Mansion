function e3_demo:room/original/hallway_1/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function e3_demo:items/game_boy_horror/map/display/original/generate
scoreboard players set #room Room 2
function e3_demo:other/music/play/group_2/cleared_room
scoreboard players reset #room Room