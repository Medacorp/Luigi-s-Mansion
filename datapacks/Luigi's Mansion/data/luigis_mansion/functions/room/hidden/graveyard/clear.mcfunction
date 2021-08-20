function luigis_mansion:room/hidden/graveyard/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/generate
playsound luigis_mansion:block.chest.spawn block @a 656 102 -31 2
scoreboard players set #room Room 29
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room