function luigis_mansion:room/normal/tea_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/tea_room
playsound luigis_mansion:block.chest.spawn block @a 643 21 -39 2
execute as @a[scores={Room=34},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 34
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room