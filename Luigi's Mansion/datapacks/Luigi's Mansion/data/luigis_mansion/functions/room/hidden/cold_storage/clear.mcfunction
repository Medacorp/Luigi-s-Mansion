function luigis_mansion:room/hidden/cold_storage/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/generate
playsound luigis_mansion:block.chest.spawn block @a 727 2 14 2
execute as @a[scores={Room=68},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 68
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room