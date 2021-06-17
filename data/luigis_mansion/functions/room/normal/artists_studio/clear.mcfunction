function luigis_mansion:room/normal/artists_studio/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/artists_studio
function luigis_mansion:room/normal/artists_studio/remove_blockade
execute as @a[scores={Room=71},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 71
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room