function luigis_mansion:room/hidden/kitchen/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/kitchen
playsound luigis_mansion:block.chest.spawn block @a 705 11 -67 2
execute as @a[scores={Room=27},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 27
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room