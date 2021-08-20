function luigis_mansion:room/normal/roof/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/generate
playsound luigis_mansion:block.chest.spawn block @a 684 137 36 2
scoreboard players set #room Room 63
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room