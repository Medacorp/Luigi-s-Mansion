function luigis_mansion:room/hidden/bottom_of_the_well/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/generate
execute as @a[scores={Room=31},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 31
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room