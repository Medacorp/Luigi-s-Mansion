function luigis_mansion_3ds_remake:room/hidden/courtyard/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/generate
playsound luigis_mansion:block.chest.spawn block @a 650 102 -8 2
scoreboard players set #room Room 30
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room