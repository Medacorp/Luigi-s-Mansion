function luigis_mansion_3ds_remake:room/hidden/hallway_8/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/generate
execute as @a[scores={Room=33},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 33
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room