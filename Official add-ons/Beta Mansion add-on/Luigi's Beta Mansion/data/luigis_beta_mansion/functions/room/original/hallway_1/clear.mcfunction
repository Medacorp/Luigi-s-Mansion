function luigis_beta_mansion:room/original/hallway_1/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_beta_mansion:items/gameboy_horror/map/display/original/generate
scoreboard players set #room Room 2
function luigis_beta_mansion:other/music/play/group_2/cleared_room
scoreboard players reset #room Room