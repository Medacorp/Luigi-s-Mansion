function luigis_mansion_3ds_remake:room/hidden/cellar/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/generate
playsound luigis_mansion:block.chest.spawn block @a 742 2 -59 2
execute as @a[scores={Room=58},gamemode=!spectator] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 58
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room