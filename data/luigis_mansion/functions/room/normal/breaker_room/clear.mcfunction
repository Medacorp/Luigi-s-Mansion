function luigis_mansion:room/normal/breaker_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/breaker_room
playsound luigis_mansion:block.chest.spawn block @a 691 2 -49 2
execute as @a[scores={Room=57},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 57
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room