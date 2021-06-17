function luigis_mansion:room/normal/sealed_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/sealed_room
playsound luigis_mansion:block.chest.spawn block @a 698 21 -73 2
execute as @a[scores={Room=66},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 66
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room